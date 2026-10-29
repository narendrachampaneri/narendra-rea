package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.mopub.common.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class ImpressionTracker {
    private static final int PERIOD = 250;

    @NonNull
    private final Handler mPollHandler;

    @NonNull
    private final PollingRunnable mPollingRunnable;

    @NonNull
    private final Map<View, TimestampWrapper<NativeResponse>> mPollingViews;

    @NonNull
    private final Map<View, NativeResponse> mTrackedViews;

    @NonNull
    private final VisibilityTracker.VisibilityChecker mVisibilityChecker;

    @NonNull
    private final VisibilityTracker mVisibilityTracker;

    @Nullable
    private VisibilityTracker.VisibilityTrackerListener mVisibilityTrackerListener;

    ImpressionTracker(@NonNull Context context) {
        this(new WeakHashMap(), new WeakHashMap(), new VisibilityTracker.VisibilityChecker(), new VisibilityTracker(context), new Handler());
    }

    @VisibleForTesting
    ImpressionTracker(@NonNull Map<View, NativeResponse> trackedViews, @NonNull Map<View, TimestampWrapper<NativeResponse>> pollingViews, @NonNull VisibilityTracker.VisibilityChecker visibilityChecker, @NonNull VisibilityTracker visibilityTracker, @NonNull Handler handler) {
        this.mTrackedViews = trackedViews;
        this.mPollingViews = pollingViews;
        this.mVisibilityChecker = visibilityChecker;
        this.mVisibilityTracker = visibilityTracker;
        this.mVisibilityTrackerListener = new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.ImpressionTracker.1
            @Override // com.mopub.nativeads.VisibilityTracker.VisibilityTrackerListener
            public void onVisibilityChanged(@NonNull List<View> visibleViews, @NonNull List<View> invisibleViews) {
                for (View view : visibleViews) {
                    NativeResponse nativeResponse = (NativeResponse) ImpressionTracker.this.mTrackedViews.get(view);
                    if (nativeResponse != null) {
                        TimestampWrapper<NativeResponse> polling = (TimestampWrapper) ImpressionTracker.this.mPollingViews.get(view);
                        if (polling == null || !nativeResponse.equals(polling.mInstance)) {
                            ImpressionTracker.this.mPollingViews.put(view, new TimestampWrapper(nativeResponse));
                        }
                    } else {
                        ImpressionTracker.this.removeView(view);
                    }
                }
                Iterator<View> it = invisibleViews.iterator();
                while (it.hasNext()) {
                    ImpressionTracker.this.mPollingViews.remove(it.next());
                }
                ImpressionTracker.this.scheduleNextPoll();
            }
        };
        this.mVisibilityTracker.setVisibilityTrackerListener(this.mVisibilityTrackerListener);
        this.mPollHandler = handler;
        this.mPollingRunnable = new PollingRunnable();
    }

    void addView(View view, @NonNull NativeResponse nativeResponse) {
        if (this.mTrackedViews.get(view) != nativeResponse) {
            removeView(view);
            if (!nativeResponse.getRecordedImpression() && !nativeResponse.isDestroyed()) {
                this.mTrackedViews.put(view, nativeResponse);
                this.mVisibilityTracker.addView(view, nativeResponse.getImpressionMinPercentageViewed());
            }
        }
    }

    void removeView(View view) {
        this.mTrackedViews.remove(view);
        removePollingView(view);
        this.mVisibilityTracker.removeView(view);
    }

    void clear() {
        this.mTrackedViews.clear();
        this.mPollingViews.clear();
        this.mVisibilityTracker.clear();
        this.mPollHandler.removeMessages(0);
    }

    void destroy() {
        clear();
        this.mVisibilityTracker.destroy();
        this.mVisibilityTrackerListener = null;
    }

    @VisibleForTesting
    void scheduleNextPoll() {
        if (!this.mPollHandler.hasMessages(0)) {
            this.mPollHandler.postDelayed(this.mPollingRunnable, 250L);
        }
    }

    private void removePollingView(View view) {
        this.mPollingViews.remove(view);
    }

    @VisibleForTesting
    class PollingRunnable implements Runnable {

        @NonNull
        private final ArrayList<View> mRemovedViews = new ArrayList<>();

        PollingRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (Map.Entry<View, TimestampWrapper<NativeResponse>> entry : ImpressionTracker.this.mPollingViews.entrySet()) {
                View view = entry.getKey();
                TimestampWrapper<NativeResponse> timestampWrapper = entry.getValue();
                if (ImpressionTracker.this.mVisibilityChecker.hasRequiredTimeElapsed(timestampWrapper.mCreatedTimestamp, timestampWrapper.mInstance.getImpressionMinTimeViewed())) {
                    timestampWrapper.mInstance.recordImpression(view);
                    this.mRemovedViews.add(view);
                }
            }
            Iterator<View> it = this.mRemovedViews.iterator();
            while (it.hasNext()) {
                ImpressionTracker.this.removeView(it.next());
            }
            this.mRemovedViews.clear();
            if (!ImpressionTracker.this.mPollingViews.isEmpty()) {
                ImpressionTracker.this.scheduleNextPoll();
            }
        }
    }

    @Nullable
    @VisibleForTesting
    @Deprecated
    VisibilityTracker.VisibilityTrackerListener getVisibilityTrackerListener() {
        return this.mVisibilityTrackerListener;
    }
}
