package com.mopub.nativeads;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class AdapterHelper {

    @NonNull
    private final WeakReference<Activity> mActivity;

    @NonNull
    private final Context mApplicationContext;
    private final int mInterval;
    private final int mStart;

    @Deprecated
    public AdapterHelper(@NonNull Context context, int start, int interval) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkArgument(context instanceof Activity, "Context must be an Activity.");
        Preconditions.checkArgument(start >= 0, "start position must be non-negative");
        Preconditions.checkArgument(interval >= 2, "interval must be at least 2");
        this.mActivity = new WeakReference<>((Activity) context);
        this.mApplicationContext = context.getApplicationContext();
        this.mStart = start;
        this.mInterval = interval;
    }

    @NonNull
    @Deprecated
    public View getAdView(@Nullable View convertView, @Nullable ViewGroup parent, @Nullable NativeResponse nativeResponse, @Nullable ViewBinder viewBinder, @Nullable MoPubNative.MoPubNativeListener moPubNativeListener) {
        Activity activity = this.mActivity.get();
        if (activity != null) {
            return NativeAdViewHelper.getAdView(convertView, parent, activity, nativeResponse, viewBinder);
        }
        MoPubLog.w("Weak reference to Activity Context in AdapterHelper became null. Returning empty view.");
        return new View(this.mApplicationContext);
    }

    @Deprecated
    public int shiftedCount(int originalCount) {
        return numberOfAdsThatCouldFitWithContent(originalCount) + originalCount;
    }

    @Deprecated
    public int shiftedPosition(int position) {
        return position - numberOfAdsSeenUpToPosition(position);
    }

    @Deprecated
    public boolean isAdPosition(int position) {
        return position >= this.mStart && (position - this.mStart) % this.mInterval == 0;
    }

    private int numberOfAdsSeenUpToPosition(int position) {
        if (position <= this.mStart) {
            return 0;
        }
        return ((int) Math.floor(((double) (position - this.mStart)) / ((double) this.mInterval))) + 1;
    }

    private int numberOfAdsThatCouldFitWithContent(int contentRowCount) {
        if (contentRowCount <= this.mStart) {
            return 0;
        }
        int spacesBetweenAds = this.mInterval - 1;
        if ((contentRowCount - this.mStart) % spacesBetweenAds == 0) {
            return (contentRowCount - this.mStart) / spacesBetweenAds;
        }
        return ((int) Math.floor(((double) (contentRowCount - this.mStart)) / ((double) spacesBetweenAds))) + 1;
    }

    @VisibleForTesting
    @Deprecated
    void clearActivityContext() {
        this.mActivity.clear();
    }
}
