package com.mopub.nativeads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class VisibilityTracker {

    @VisibleForTesting
    static final int NUM_ACCESSES_BEFORE_TRIMMING = 50;
    private static final int VISIBILITY_THROTTLE_MILLIS = 100;
    private long mAccessCounter;
    private boolean mIsVisibilityScheduled;

    @Nullable
    @VisibleForTesting
    ViewTreeObserver.OnPreDrawListener mOnPreDrawListener;

    @NonNull
    @VisibleForTesting
    final WeakReference<View> mRootView;

    @NonNull
    private final Map<View, TrackingInfo> mTrackedViews;

    @NonNull
    private final ArrayList<View> mTrimmedViews;

    @NonNull
    private final VisibilityChecker mVisibilityChecker;

    @NonNull
    private final Handler mVisibilityHandler;

    @NonNull
    private final VisibilityRunnable mVisibilityRunnable;

    @Nullable
    private VisibilityTrackerListener mVisibilityTrackerListener;

    interface VisibilityTrackerListener {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    static class TrackingInfo {
        long mAccessOrder;
        int mMinViewablePercent;

        TrackingInfo() {
        }
    }

    public VisibilityTracker(@NonNull Context context) {
        this(context, new WeakHashMap(10), new VisibilityChecker(), new Handler());
    }

    @VisibleForTesting
    VisibilityTracker(@NonNull Context context, @NonNull Map<View, TrackingInfo> trackedViews, @NonNull VisibilityChecker visibilityChecker, @NonNull Handler visibilityHandler) {
        this.mAccessCounter = 0L;
        this.mTrackedViews = trackedViews;
        this.mVisibilityChecker = visibilityChecker;
        this.mVisibilityHandler = visibilityHandler;
        this.mVisibilityRunnable = new VisibilityRunnable();
        this.mTrimmedViews = new ArrayList<>(50);
        View rootView = ((Activity) context).getWindow().getDecorView();
        this.mRootView = new WeakReference<>(rootView);
        ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            MoPubLog.w("Visibility Tracker was unable to track views because the root view tree observer was not alive");
        } else {
            this.mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.nativeads.VisibilityTracker.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    VisibilityTracker.this.scheduleVisibilityCheck();
                    return true;
                }
            };
            viewTreeObserver.addOnPreDrawListener(this.mOnPreDrawListener);
        }
    }

    void setVisibilityTrackerListener(@Nullable VisibilityTrackerListener visibilityTrackerListener) {
        this.mVisibilityTrackerListener = visibilityTrackerListener;
    }

    void addView(@NonNull View view, int minPercentageViewed) {
        TrackingInfo trackingInfo = this.mTrackedViews.get(view);
        if (trackingInfo == null) {
            trackingInfo = new TrackingInfo();
            this.mTrackedViews.put(view, trackingInfo);
            scheduleVisibilityCheck();
        }
        trackingInfo.mMinViewablePercent = minPercentageViewed;
        trackingInfo.mAccessOrder = this.mAccessCounter;
        this.mAccessCounter++;
        if (this.mAccessCounter % 50 == 0) {
            trimTrackedViews(this.mAccessCounter - 50);
        }
    }

    private void trimTrackedViews(long minAccessOrder) {
        for (Map.Entry<View, TrackingInfo> entry : this.mTrackedViews.entrySet()) {
            if (entry.getValue().mAccessOrder < minAccessOrder) {
                this.mTrimmedViews.add(entry.getKey());
            }
        }
        for (View view : this.mTrimmedViews) {
            removeView(view);
        }
        this.mTrimmedViews.clear();
    }

    void removeView(@NonNull View view) {
        this.mTrackedViews.remove(view);
    }

    void clear() {
        this.mTrackedViews.clear();
        this.mVisibilityHandler.removeMessages(0);
        this.mIsVisibilityScheduled = false;
    }

    void destroy() {
        clear();
        View rootView = this.mRootView.get();
        if (rootView != null && this.mOnPreDrawListener != null) {
            ViewTreeObserver viewTreeObserver = rootView.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.mOnPreDrawListener);
            }
            this.mOnPreDrawListener = null;
        }
        this.mVisibilityTrackerListener = null;
    }

    void scheduleVisibilityCheck() {
        if (!this.mIsVisibilityScheduled) {
            this.mIsVisibilityScheduled = true;
            this.mVisibilityHandler.postDelayed(this.mVisibilityRunnable, 100L);
        }
    }

    class VisibilityRunnable implements Runnable {

        @NonNull
        private final ArrayList<View> mInvisibleViews = new ArrayList<>();

        @NonNull
        private final ArrayList<View> mVisibleViews = new ArrayList<>();

        VisibilityRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VisibilityTracker.this.mIsVisibilityScheduled = false;
            for (Map.Entry<View, TrackingInfo> entry : VisibilityTracker.this.mTrackedViews.entrySet()) {
                View view = entry.getKey();
                int minPercentageViewed = entry.getValue().mMinViewablePercent;
                if (VisibilityTracker.this.mVisibilityChecker.isVisible(view, minPercentageViewed)) {
                    this.mVisibleViews.add(view);
                } else {
                    this.mInvisibleViews.add(view);
                }
            }
            if (VisibilityTracker.this.mVisibilityTrackerListener != null) {
                VisibilityTracker.this.mVisibilityTrackerListener.onVisibilityChanged(this.mVisibleViews, this.mInvisibleViews);
            }
            this.mVisibleViews.clear();
            this.mInvisibleViews.clear();
        }
    }

    static class VisibilityChecker {
        private final Rect mClipRect = new Rect();

        VisibilityChecker() {
        }

        boolean hasRequiredTimeElapsed(long startTimeMillis, int minTimeViewed) {
            return SystemClock.uptimeMillis() - startTimeMillis >= ((long) minTimeViewed);
        }

        boolean isVisible(@Nullable View view, int minPercentageViewed) {
            if (view == null || view.getVisibility() != 0 || view.getParent() == null || !view.getGlobalVisibleRect(this.mClipRect)) {
                return false;
            }
            long visibleViewArea = ((long) this.mClipRect.height()) * ((long) this.mClipRect.width());
            long totalViewArea = ((long) view.getHeight()) * ((long) view.getWidth());
            return totalViewArea > 0 && 100 * visibleViewArea >= ((long) minPercentageViewed) * totalViewArea;
        }
    }
}
