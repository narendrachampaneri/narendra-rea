package com.mopub.mraid;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.common.util.Views;
import com.mopub.mobileads.MraidVideoPlayerActivity;
import com.mopub.mobileads.util.WebViews;
import java.lang.ref.WeakReference;
import java.net.URI;

/* JADX INFO: loaded from: classes.dex */
public class MraidController {
    private final AdReport mAdReport;
    private boolean mAllowOrientationChange;

    @NonNull
    private final CloseableLayout mCloseableAdContainer;

    @NonNull
    private final Context mContext;

    @Nullable
    private MraidWebViewDebugListener mDebugListener;

    @NonNull
    private final FrameLayout mDefaultAdContainer;
    private MraidOrientation mForceOrientation;
    private boolean mIsPaused;

    @NonNull
    private final MraidBridge mMraidBridge;
    private final MraidBridge.MraidBridgeListener mMraidBridgeListener;

    @Nullable
    private MraidListener mMraidListener;
    private final MraidNativeCommandHandler mMraidNativeCommandHandler;

    @Nullable
    private MraidBridge.MraidWebView mMraidWebView;

    @Nullable
    private UseCustomCloseListener mOnCloseButtonListener;

    @NonNull
    private OrientationBroadcastReceiver mOrientationBroadcastReceiver;

    @Nullable
    private Integer mOriginalActivityOrientation;

    @NonNull
    private final PlacementType mPlacementType;

    @Nullable
    private ViewGroup mRootView;

    @NonNull
    private final MraidScreenMetrics mScreenMetrics;

    @NonNull
    private final ScreenMetricsWaiter mScreenMetricsWaiter;

    @NonNull
    private final MraidBridge mTwoPartBridge;
    private final MraidBridge.MraidBridgeListener mTwoPartBridgeListener;

    @Nullable
    private MraidBridge.MraidWebView mTwoPartWebView;

    @NonNull
    private ViewState mViewState;

    @NonNull
    private final WeakReference<Activity> mWeakActivity;

    public interface MraidListener {
        void onClose();

        void onExpand();

        void onFailedToLoad();

        void onLoaded(View view);

        void onOpen();
    }

    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    public MraidController(@NonNull Context context, @Nullable AdReport adReport, @NonNull PlacementType placementType) {
        this(context, adReport, placementType, new MraidBridge(adReport, placementType), new MraidBridge(adReport, PlacementType.INTERSTITIAL), new ScreenMetricsWaiter());
    }

    @VisibleForTesting
    MraidController(@NonNull Context context, @Nullable AdReport adReport, @NonNull PlacementType placementType, @NonNull MraidBridge bridge, @NonNull MraidBridge twoPartBridge, @NonNull ScreenMetricsWaiter screenMetricsWaiter) {
        this.mViewState = ViewState.LOADING;
        this.mOrientationBroadcastReceiver = new OrientationBroadcastReceiver();
        this.mAllowOrientationChange = true;
        this.mForceOrientation = MraidOrientation.NONE;
        this.mMraidBridgeListener = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.3
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageLoaded() {
                MraidController.this.handlePageLoad();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageFailedToLoad() {
                if (MraidController.this.mMraidListener != null) {
                    MraidController.this.mMraidListener.onFailedToLoad();
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onVisibilityChanged(boolean isVisible) {
                if (!MraidController.this.mTwoPartBridge.isAttached()) {
                    MraidController.this.mMraidBridge.notifyViewability(isVisible);
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onJsAlert(@NonNull String message, @NonNull JsResult result) {
                return MraidController.this.handleJsAlert(message, result);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
                return MraidController.this.handleConsoleMessage(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onClose() {
                MraidController.this.handleClose();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onResize(int width, int height, int offsetX, int offsetY, @NonNull CloseableLayout.ClosePosition closePosition, boolean allowOffscreen) throws MraidCommandException {
                MraidController.this.handleResize(width, height, offsetX, offsetY, closePosition, allowOffscreen);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onExpand(@Nullable URI uri, boolean shouldUseCustomClose) throws MraidCommandException {
                MraidController.this.handleExpand(uri, shouldUseCustomClose);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onUseCustomClose(boolean shouldUseCustomClose) {
                MraidController.this.handleCustomClose(shouldUseCustomClose);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onSetOrientationProperties(boolean allowOrientationChange, MraidOrientation forceOrientation) throws MraidCommandException {
                MraidController.this.handleSetOrientationProperties(allowOrientationChange, forceOrientation);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onOpen(@NonNull URI uri) {
                MraidController.this.handleOpen(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPlayVideo(@NonNull URI uri) {
                MraidController.this.handleShowVideo(uri.toString());
            }
        };
        this.mTwoPartBridgeListener = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.4
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageLoaded() {
                MraidController.this.handleTwoPartPageLoad();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPageFailedToLoad() {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onVisibilityChanged(boolean isVisible) {
                MraidController.this.mMraidBridge.notifyViewability(isVisible);
                MraidController.this.mTwoPartBridge.notifyViewability(isVisible);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onJsAlert(@NonNull String message, @NonNull JsResult result) {
                return MraidController.this.handleJsAlert(message, result);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
                return MraidController.this.handleConsoleMessage(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onResize(int width, int height, int offsetX, int offsetY, @NonNull CloseableLayout.ClosePosition closePosition, boolean allowOffscreen) throws MraidCommandException {
                throw new MraidCommandException("Not allowed to resize from an expanded state");
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onExpand(@Nullable URI uri, boolean shouldUseCustomClose) {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onClose() {
                MraidController.this.handleClose();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onUseCustomClose(boolean shouldUseCustomClose) {
                MraidController.this.handleCustomClose(shouldUseCustomClose);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onSetOrientationProperties(boolean allowOrientationChange, MraidOrientation forceOrientation) throws MraidCommandException {
                MraidController.this.handleSetOrientationProperties(allowOrientationChange, forceOrientation);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onOpen(URI uri) {
                MraidController.this.handleOpen(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public void onPlayVideo(@NonNull URI uri) {
                MraidController.this.handleShowVideo(uri.toString());
            }
        };
        this.mContext = context.getApplicationContext();
        Preconditions.checkNotNull(this.mContext);
        this.mAdReport = adReport;
        if (context instanceof Activity) {
            this.mWeakActivity = new WeakReference<>((Activity) context);
        } else {
            this.mWeakActivity = new WeakReference<>(null);
        }
        this.mPlacementType = placementType;
        this.mMraidBridge = bridge;
        this.mTwoPartBridge = twoPartBridge;
        this.mScreenMetricsWaiter = screenMetricsWaiter;
        this.mViewState = ViewState.LOADING;
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        this.mScreenMetrics = new MraidScreenMetrics(this.mContext, displayMetrics.density);
        this.mDefaultAdContainer = new FrameLayout(this.mContext);
        this.mCloseableAdContainer = new CloseableLayout(this.mContext);
        this.mCloseableAdContainer.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mraid.MraidController.1
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public void onClose() {
                MraidController.this.handleClose();
            }
        });
        View dimmingView = new View(this.mContext);
        dimmingView.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidController.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                return true;
            }
        });
        this.mCloseableAdContainer.addView(dimmingView, new FrameLayout.LayoutParams(-1, -1));
        this.mOrientationBroadcastReceiver.register(this.mContext);
        this.mMraidBridge.setMraidBridgeListener(this.mMraidBridgeListener);
        this.mTwoPartBridge.setMraidBridgeListener(this.mTwoPartBridgeListener);
        this.mMraidNativeCommandHandler = new MraidNativeCommandHandler();
    }

    public void setMraidListener(@Nullable MraidListener mraidListener) {
        this.mMraidListener = mraidListener;
    }

    public void setUseCustomCloseListener(@Nullable UseCustomCloseListener listener) {
        this.mOnCloseButtonListener = listener;
    }

    public void setDebugListener(@Nullable MraidWebViewDebugListener debugListener) {
        this.mDebugListener = debugListener;
    }

    public void loadContent(@NonNull String htmlData) {
        Preconditions.checkState(this.mMraidWebView == null, "loadContent should only be called once");
        this.mMraidWebView = new MraidBridge.MraidWebView(this.mContext);
        this.mMraidBridge.attachView(this.mMraidWebView);
        this.mDefaultAdContainer.addView(this.mMraidWebView, new FrameLayout.LayoutParams(-1, -1));
        this.mMraidBridge.setContentHtml(htmlData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDisplayRotation() {
        WindowManager wm = (WindowManager) this.mContext.getSystemService("window");
        return wm.getDefaultDisplay().getRotation();
    }

    @VisibleForTesting
    boolean handleConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
        if (this.mDebugListener != null) {
            return this.mDebugListener.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @VisibleForTesting
    boolean handleJsAlert(@NonNull String message, @NonNull JsResult result) {
        if (this.mDebugListener != null) {
            return this.mDebugListener.onJsAlert(message, result);
        }
        result.confirm();
        return true;
    }

    @VisibleForTesting
    static class ScreenMetricsWaiter {

        @NonNull
        private final Handler mHandler = new Handler();

        @Nullable
        private WaitRequest mLastWaitRequest;

        static class WaitRequest {

            @NonNull
            private final Handler mHandler;

            @Nullable
            private Runnable mSuccessRunnable;

            @NonNull
            private final View[] mViews;
            int mWaitCount;
            private final Runnable mWaitingRunnable;

            private WaitRequest(@NonNull Handler handler, @NonNull View[] views) {
                this.mWaitingRunnable = new Runnable() { // from class: com.mopub.mraid.MraidController.ScreenMetricsWaiter.WaitRequest.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (final View view : WaitRequest.this.mViews) {
                            if (view.getHeight() > 0 || view.getWidth() > 0) {
                                WaitRequest.this.countDown();
                            } else {
                                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.mraid.MraidController.ScreenMetricsWaiter.WaitRequest.1.1
                                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                    public boolean onPreDraw() {
                                        view.getViewTreeObserver().removeOnPreDrawListener(this);
                                        WaitRequest.this.countDown();
                                        return true;
                                    }
                                });
                            }
                        }
                    }
                };
                this.mHandler = handler;
                this.mViews = views;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void countDown() {
                this.mWaitCount--;
                if (this.mWaitCount == 0 && this.mSuccessRunnable != null) {
                    this.mSuccessRunnable.run();
                    this.mSuccessRunnable = null;
                }
            }

            void start(@NonNull Runnable successRunnable) {
                this.mSuccessRunnable = successRunnable;
                this.mWaitCount = this.mViews.length;
                this.mHandler.post(this.mWaitingRunnable);
            }

            void cancel() {
                this.mHandler.removeCallbacks(this.mWaitingRunnable);
                this.mSuccessRunnable = null;
            }
        }

        ScreenMetricsWaiter() {
        }

        WaitRequest waitFor(@NonNull View... views) {
            this.mLastWaitRequest = new WaitRequest(this.mHandler, views);
            return this.mLastWaitRequest;
        }

        void cancelLastRequest() {
            if (this.mLastWaitRequest != null) {
                this.mLastWaitRequest.cancel();
                this.mLastWaitRequest = null;
            }
        }
    }

    @Nullable
    private View getCurrentWebView() {
        return this.mTwoPartBridge.isAttached() ? this.mTwoPartWebView : this.mMraidWebView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInlineVideoAvailable() {
        Activity activity = this.mWeakActivity.get();
        if (activity == null || getCurrentWebView() == null) {
            return false;
        }
        return this.mMraidNativeCommandHandler.isInlineVideoAvailable(activity, getCurrentWebView());
    }

    @VisibleForTesting
    void handlePageLoad() {
        setViewState(ViewState.DEFAULT, new Runnable() { // from class: com.mopub.mraid.MraidController.5
            @Override // java.lang.Runnable
            public void run() {
                MraidController.this.mMraidBridge.notifySupports(MraidController.this.mMraidNativeCommandHandler.isSmsAvailable(MraidController.this.mContext), MraidController.this.mMraidNativeCommandHandler.isTelAvailable(MraidController.this.mContext), MraidNativeCommandHandler.isCalendarAvailable(MraidController.this.mContext), MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.mContext), MraidController.this.isInlineVideoAvailable());
                MraidController.this.mMraidBridge.notifyPlacementType(MraidController.this.mPlacementType);
                MraidController.this.mMraidBridge.notifyViewability(MraidController.this.mMraidBridge.isVisible());
                MraidController.this.mMraidBridge.notifyReady();
            }
        });
        if (this.mMraidListener != null) {
            this.mMraidListener.onLoaded(this.mDefaultAdContainer);
        }
    }

    @VisibleForTesting
    void handleTwoPartPageLoad() {
        updateScreenMetricsAsync(new Runnable() { // from class: com.mopub.mraid.MraidController.6
            @Override // java.lang.Runnable
            public void run() {
                MraidBridge mraidBridge = MraidController.this.mTwoPartBridge;
                boolean zIsSmsAvailable = MraidController.this.mMraidNativeCommandHandler.isSmsAvailable(MraidController.this.mContext);
                boolean zIsTelAvailable = MraidController.this.mMraidNativeCommandHandler.isTelAvailable(MraidController.this.mContext);
                MraidNativeCommandHandler unused = MraidController.this.mMraidNativeCommandHandler;
                boolean zIsCalendarAvailable = MraidNativeCommandHandler.isCalendarAvailable(MraidController.this.mContext);
                MraidNativeCommandHandler unused2 = MraidController.this.mMraidNativeCommandHandler;
                mraidBridge.notifySupports(zIsSmsAvailable, zIsTelAvailable, zIsCalendarAvailable, MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.mContext), MraidController.this.isInlineVideoAvailable());
                MraidController.this.mTwoPartBridge.notifyViewState(MraidController.this.mViewState);
                MraidController.this.mTwoPartBridge.notifyPlacementType(MraidController.this.mPlacementType);
                MraidController.this.mTwoPartBridge.notifyViewability(MraidController.this.mTwoPartBridge.isVisible());
                MraidController.this.mTwoPartBridge.notifyReady();
            }
        });
    }

    private void updateScreenMetricsAsync(@Nullable final Runnable successRunnable) {
        this.mScreenMetricsWaiter.cancelLastRequest();
        final View currentWebView = getCurrentWebView();
        if (currentWebView == null) {
            return;
        }
        this.mScreenMetricsWaiter.waitFor(this.mDefaultAdContainer, currentWebView).start(new Runnable() { // from class: com.mopub.mraid.MraidController.7
            @Override // java.lang.Runnable
            public void run() {
                DisplayMetrics displayMetrics = MraidController.this.mContext.getResources().getDisplayMetrics();
                MraidController.this.mScreenMetrics.setScreenSize(displayMetrics.widthPixels, displayMetrics.heightPixels);
                int[] location = new int[2];
                View rootView = MraidController.this.getRootView();
                rootView.getLocationOnScreen(location);
                MraidController.this.mScreenMetrics.setRootViewPosition(location[0], location[1], rootView.getWidth(), rootView.getHeight());
                MraidController.this.mDefaultAdContainer.getLocationOnScreen(location);
                MraidController.this.mScreenMetrics.setDefaultAdPosition(location[0], location[1], MraidController.this.mDefaultAdContainer.getWidth(), MraidController.this.mDefaultAdContainer.getHeight());
                currentWebView.getLocationOnScreen(location);
                MraidController.this.mScreenMetrics.setCurrentAdPosition(location[0], location[1], currentWebView.getWidth(), currentWebView.getHeight());
                MraidController.this.mMraidBridge.notifyScreenMetrics(MraidController.this.mScreenMetrics);
                if (MraidController.this.mTwoPartBridge.isAttached()) {
                    MraidController.this.mTwoPartBridge.notifyScreenMetrics(MraidController.this.mScreenMetrics);
                }
                if (successRunnable != null) {
                    successRunnable.run();
                }
            }
        });
    }

    void handleOrientationChange(int currentRotation) {
        updateScreenMetricsAsync(null);
    }

    public void pause(boolean isFinishing) {
        this.mIsPaused = true;
        if (this.mMraidWebView != null) {
            WebViews.onPause(this.mMraidWebView, isFinishing);
        }
        if (this.mTwoPartWebView != null) {
            WebViews.onPause(this.mTwoPartWebView, isFinishing);
        }
    }

    public void resume() {
        this.mIsPaused = false;
        if (this.mMraidWebView != null) {
            WebViews.onResume(this.mMraidWebView);
        }
        if (this.mTwoPartWebView != null) {
            WebViews.onResume(this.mTwoPartWebView);
        }
    }

    public void destroy() {
        this.mScreenMetricsWaiter.cancelLastRequest();
        try {
            this.mOrientationBroadcastReceiver.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        if (!this.mIsPaused) {
            pause(true);
        }
        Views.removeFromParent(this.mCloseableAdContainer);
        this.mMraidBridge.detach();
        if (this.mMraidWebView != null) {
            this.mMraidWebView.destroy();
            this.mMraidWebView = null;
        }
        this.mTwoPartBridge.detach();
        if (this.mTwoPartWebView != null) {
            this.mTwoPartWebView.destroy();
            this.mTwoPartWebView = null;
        }
    }

    private void setViewState(@NonNull ViewState viewState) {
        setViewState(viewState, null);
    }

    private void setViewState(@NonNull ViewState viewState, @Nullable Runnable successRunnable) {
        MoPubLog.d("MRAID state set to " + viewState);
        this.mViewState = viewState;
        this.mMraidBridge.notifyViewState(viewState);
        if (this.mTwoPartBridge.isLoaded()) {
            this.mTwoPartBridge.notifyViewState(viewState);
        }
        if (this.mMraidListener != null) {
            if (viewState == ViewState.EXPANDED) {
                this.mMraidListener.onExpand();
            } else if (viewState == ViewState.HIDDEN) {
                this.mMraidListener.onClose();
            }
        }
        updateScreenMetricsAsync(successRunnable);
    }

    int clampInt(int min, int target, int max) {
        return Math.max(min, Math.min(target, max));
    }

    @VisibleForTesting
    void handleResize(int widthDips, int heightDips, int offsetXDips, int offsetYDips, @NonNull CloseableLayout.ClosePosition closePosition, boolean allowOffscreen) throws MraidCommandException {
        if (this.mMraidWebView == null) {
            throw new MraidCommandException("Unable to resize after the WebView is destroyed");
        }
        if (this.mViewState != ViewState.LOADING && this.mViewState != ViewState.HIDDEN) {
            if (this.mViewState == ViewState.EXPANDED) {
                throw new MraidCommandException("Not allowed to resize from an already expanded ad");
            }
            if (this.mPlacementType == PlacementType.INTERSTITIAL) {
                throw new MraidCommandException("Not allowed to resize from an interstitial ad");
            }
            int width = Dips.dipsToIntPixels(widthDips, this.mContext);
            int height = Dips.dipsToIntPixels(heightDips, this.mContext);
            int offsetX = Dips.dipsToIntPixels(offsetXDips, this.mContext);
            int offsetY = Dips.dipsToIntPixels(offsetYDips, this.mContext);
            int left = this.mScreenMetrics.getDefaultAdRect().left + offsetX;
            int top = this.mScreenMetrics.getDefaultAdRect().top + offsetY;
            Rect resizeRect = new Rect(left, top, left + width, top + height);
            if (!allowOffscreen) {
                Rect bounds = this.mScreenMetrics.getRootViewRect();
                if (resizeRect.width() > bounds.width() || resizeRect.height() > bounds.height()) {
                    throw new MraidCommandException("resizeProperties specified a size (" + widthDips + ", " + heightDips + ") and offset (" + offsetXDips + ", " + offsetYDips + ") that doesn't allow the ad to appear within the max allowed size (" + this.mScreenMetrics.getRootViewRectDips().width() + ", " + this.mScreenMetrics.getRootViewRectDips().height() + ")");
                }
                int newLeft = clampInt(bounds.left, resizeRect.left, bounds.right - resizeRect.width());
                int newTop = clampInt(bounds.top, resizeRect.top, bounds.bottom - resizeRect.height());
                resizeRect.offsetTo(newLeft, newTop);
            }
            Rect closeRect = new Rect();
            this.mCloseableAdContainer.applyCloseRegionBounds(closePosition, resizeRect, closeRect);
            if (!this.mScreenMetrics.getRootViewRect().contains(closeRect)) {
                throw new MraidCommandException("resizeProperties specified a size (" + widthDips + ", " + heightDips + ") and offset (" + offsetXDips + ", " + offsetYDips + ") that doesn't allow the close region to appear within the max allowed size (" + this.mScreenMetrics.getRootViewRectDips().width() + ", " + this.mScreenMetrics.getRootViewRectDips().height() + ")");
            }
            if (!resizeRect.contains(closeRect)) {
                throw new MraidCommandException("resizeProperties specified a size (" + widthDips + ", " + height + ") and offset (" + offsetXDips + ", " + offsetYDips + ") that don't allow the close region to appear within the resized ad.");
            }
            this.mCloseableAdContainer.setCloseVisible(false);
            this.mCloseableAdContainer.setClosePosition(closePosition);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(resizeRect.width(), resizeRect.height());
            layoutParams.leftMargin = resizeRect.left - this.mScreenMetrics.getRootViewRect().left;
            layoutParams.topMargin = resizeRect.top - this.mScreenMetrics.getRootViewRect().top;
            if (this.mViewState == ViewState.DEFAULT) {
                this.mDefaultAdContainer.removeView(this.mMraidWebView);
                this.mDefaultAdContainer.setVisibility(4);
                this.mCloseableAdContainer.addView(this.mMraidWebView, new FrameLayout.LayoutParams(-1, -1));
                getRootView().addView(this.mCloseableAdContainer, layoutParams);
            } else if (this.mViewState == ViewState.RESIZED) {
                this.mCloseableAdContainer.setLayoutParams(layoutParams);
            }
            this.mCloseableAdContainer.setClosePosition(closePosition);
            setViewState(ViewState.RESIZED);
        }
    }

    void handleExpand(@Nullable URI uri, boolean shouldUseCustomClose) throws MraidCommandException {
        if (this.mMraidWebView == null) {
            throw new MraidCommandException("Unable to expand after the WebView is destroyed");
        }
        if (this.mPlacementType != PlacementType.INTERSTITIAL) {
            if (this.mViewState == ViewState.DEFAULT || this.mViewState == ViewState.RESIZED) {
                applyOrientation();
                boolean isTwoPart = uri != null;
                if (isTwoPart) {
                    this.mTwoPartWebView = new MraidBridge.MraidWebView(this.mContext);
                    this.mTwoPartBridge.attachView(this.mTwoPartWebView);
                    this.mTwoPartBridge.setContentUrl(uri.toString());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                if (this.mViewState == ViewState.DEFAULT) {
                    if (isTwoPart) {
                        this.mCloseableAdContainer.addView(this.mTwoPartWebView, layoutParams);
                    } else {
                        this.mDefaultAdContainer.removeView(this.mMraidWebView);
                        this.mDefaultAdContainer.setVisibility(4);
                        this.mCloseableAdContainer.addView(this.mMraidWebView, layoutParams);
                    }
                    getRootView().addView(this.mCloseableAdContainer, new FrameLayout.LayoutParams(-1, -1));
                } else if (this.mViewState == ViewState.RESIZED && isTwoPart) {
                    this.mCloseableAdContainer.removeView(this.mMraidWebView);
                    this.mDefaultAdContainer.addView(this.mMraidWebView, layoutParams);
                    this.mDefaultAdContainer.setVisibility(4);
                    this.mCloseableAdContainer.addView(this.mTwoPartWebView, layoutParams);
                }
                this.mCloseableAdContainer.setLayoutParams(layoutParams);
                handleCustomClose(shouldUseCustomClose);
                setViewState(ViewState.EXPANDED);
            }
        }
    }

    @VisibleForTesting
    void handleClose() {
        if (this.mMraidWebView != null && this.mViewState != ViewState.LOADING && this.mViewState != ViewState.HIDDEN) {
            if (this.mViewState == ViewState.EXPANDED || this.mPlacementType == PlacementType.INTERSTITIAL) {
                unApplyOrientation();
            }
            if (this.mViewState == ViewState.RESIZED || this.mViewState == ViewState.EXPANDED) {
                if (this.mTwoPartBridge.isAttached() && this.mTwoPartWebView != null) {
                    this.mCloseableAdContainer.removeView(this.mTwoPartWebView);
                    this.mTwoPartBridge.detach();
                } else {
                    this.mCloseableAdContainer.removeView(this.mMraidWebView);
                    this.mDefaultAdContainer.addView(this.mMraidWebView, new FrameLayout.LayoutParams(-1, -1));
                    this.mDefaultAdContainer.setVisibility(0);
                }
                getRootView().removeView(this.mCloseableAdContainer);
                setViewState(ViewState.DEFAULT);
                return;
            }
            if (this.mViewState == ViewState.DEFAULT) {
                this.mDefaultAdContainer.setVisibility(4);
                setViewState(ViewState.HIDDEN);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    @TargetApi(19)
    public ViewGroup getRootView() {
        if (this.mRootView == null) {
            if (Build.VERSION.SDK_INT >= 19) {
                Preconditions.checkState(this.mDefaultAdContainer.isAttachedToWindow());
            }
            this.mRootView = (ViewGroup) this.mDefaultAdContainer.getRootView().findViewById(R.id.content);
        }
        return this.mRootView;
    }

    @VisibleForTesting
    void handleShowVideo(@NonNull String videoUrl) {
        MraidVideoPlayerActivity.startMraid(this.mContext, videoUrl);
    }

    @VisibleForTesting
    void lockOrientation(int screenOrientation) throws MraidCommandException {
        Activity activity = this.mWeakActivity.get();
        if (activity == null || !shouldAllowForceOrientation(this.mForceOrientation)) {
            throw new MraidCommandException("Attempted to lock orientation to unsupported value: " + this.mForceOrientation.name());
        }
        if (this.mOriginalActivityOrientation == null) {
            this.mOriginalActivityOrientation = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(screenOrientation);
    }

    @VisibleForTesting
    void applyOrientation() throws MraidCommandException {
        if (this.mForceOrientation == MraidOrientation.NONE) {
            if (this.mAllowOrientationChange) {
                unApplyOrientation();
                return;
            }
            Activity activity = this.mWeakActivity.get();
            if (activity == null) {
                throw new MraidCommandException("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
            }
            lockOrientation(DeviceUtils.getScreenOrientation(activity));
            return;
        }
        lockOrientation(this.mForceOrientation.getActivityInfoOrientation());
    }

    @VisibleForTesting
    void unApplyOrientation() {
        Activity activity = this.mWeakActivity.get();
        if (activity != null && this.mOriginalActivityOrientation != null) {
            activity.setRequestedOrientation(this.mOriginalActivityOrientation.intValue());
        }
        this.mOriginalActivityOrientation = null;
    }

    @TargetApi(13)
    @VisibleForTesting
    boolean shouldAllowForceOrientation(MraidOrientation newOrientation) {
        if (newOrientation == MraidOrientation.NONE) {
            return true;
        }
        Activity activity = this.mWeakActivity.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int activityOrientation = activityInfo.screenOrientation;
            if (activityOrientation != -1) {
                return activityOrientation == newOrientation.getActivityInfoOrientation();
            }
            boolean containsNecessaryConfigChanges = Utils.bitMaskContainsFlag(activityInfo.configChanges, 128);
            if (Build.VERSION.SDK_INT >= 13) {
                containsNecessaryConfigChanges = containsNecessaryConfigChanges && Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024);
            }
            return containsNecessaryConfigChanges;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @VisibleForTesting
    void handleCustomClose(boolean useCustomClose) {
        boolean wasUsingCustomClose = !this.mCloseableAdContainer.isCloseVisible();
        if (useCustomClose != wasUsingCustomClose) {
            this.mCloseableAdContainer.setCloseVisible(useCustomClose ? false : true);
            if (this.mOnCloseButtonListener != null) {
                this.mOnCloseButtonListener.useCustomCloseChanged(useCustomClose);
            }
        }
    }

    @NonNull
    public FrameLayout getAdContainer() {
        return this.mDefaultAdContainer;
    }

    public void loadJavascript(@NonNull String javascript) {
        this.mMraidBridge.injectJavaScript(javascript);
    }

    @VisibleForTesting
    class OrientationBroadcastReceiver extends BroadcastReceiver {

        @Nullable
        private Context mContext;
        private int mLastRotation = -1;

        OrientationBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int orientation;
            if (this.mContext != null && "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) && (orientation = MraidController.this.getDisplayRotation()) != this.mLastRotation) {
                this.mLastRotation = orientation;
                MraidController.this.handleOrientationChange(this.mLastRotation);
            }
        }

        public void register(@NonNull Context context) {
            Preconditions.checkNotNull(context);
            this.mContext = context.getApplicationContext();
            if (this.mContext != null) {
                this.mContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public void unregister() {
            if (this.mContext != null) {
                this.mContext.unregisterReceiver(this);
                this.mContext = null;
            }
        }
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @VisibleForTesting
    void handleSetOrientationProperties(boolean allowOrientationChange, MraidOrientation forceOrientation) throws MraidCommandException {
        if (!shouldAllowForceOrientation(forceOrientation)) {
            throw new MraidCommandException("Unable to force orientation to " + forceOrientation);
        }
        this.mAllowOrientationChange = allowOrientationChange;
        this.mForceOrientation = forceOrientation;
        if (this.mViewState == ViewState.EXPANDED || this.mPlacementType == PlacementType.INTERSTITIAL) {
            applyOrientation();
        }
    }

    @VisibleForTesting
    void handleOpen(@NonNull String url) {
        if (this.mMraidListener != null) {
            this.mMraidListener.onOpen();
        }
        new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).build().handleUrl(this.mContext, url);
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    ViewState getViewState() {
        return this.mViewState;
    }

    @VisibleForTesting
    @Deprecated
    void setViewStateForTesting(@NonNull ViewState viewState) {
        this.mViewState = viewState;
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    CloseableLayout getExpandedAdContainer() {
        return this.mCloseableAdContainer;
    }

    @VisibleForTesting
    @Deprecated
    void setRootView(FrameLayout rootView) {
        this.mRootView = rootView;
    }

    @VisibleForTesting
    @Deprecated
    void setRootViewSize(int width, int height) {
        this.mScreenMetrics.setRootViewPosition(0, 0, width, height);
    }

    @VisibleForTesting
    @Deprecated
    Integer getOriginalActivityOrientation() {
        return this.mOriginalActivityOrientation;
    }

    @VisibleForTesting
    @Deprecated
    boolean getAllowOrientationChange() {
        return this.mAllowOrientationChange;
    }

    @VisibleForTesting
    @Deprecated
    MraidOrientation getForceOrientation() {
        return this.mForceOrientation;
    }

    @VisibleForTesting
    @Deprecated
    void setOrientationBroadcastReceiver(OrientationBroadcastReceiver receiver) {
        this.mOrientationBroadcastReceiver = receiver;
    }

    @VisibleForTesting
    @Deprecated
    MraidBridge.MraidWebView getMraidWebView() {
        return this.mMraidWebView;
    }

    @VisibleForTesting
    @Deprecated
    MraidBridge.MraidWebView getTwoPartWebView() {
        return this.mTwoPartWebView;
    }
}
