package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class AdRequestStatusMapping {

    @NonNull
    private final Map<String, AdRequestStatus> mAdUnitToAdRequestStatus = new TreeMap();

    private enum LoadingStatus {
        LOADING,
        LOADED,
        PLAYED
    }

    void markFail(@NonNull String adUnitId) {
        this.mAdUnitToAdRequestStatus.remove(adUnitId);
    }

    void markLoading(@NonNull String adUnitId) {
        this.mAdUnitToAdRequestStatus.put(adUnitId, new AdRequestStatus(LoadingStatus.LOADING));
    }

    void markLoaded(@NonNull String adUnitId, @Nullable String failUrlString, @Nullable String impressionTrackerUrlString, @Nullable String clickTrackerUrlString) {
        this.mAdUnitToAdRequestStatus.put(adUnitId, new AdRequestStatus(LoadingStatus.LOADED, failUrlString, impressionTrackerUrlString, clickTrackerUrlString));
    }

    void markPlayed(@NonNull String adUnitId) {
        if (this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            AdRequestStatus adRequestStatus = this.mAdUnitToAdRequestStatus.get(adUnitId);
            adRequestStatus.setStatus(LoadingStatus.PLAYED);
        } else {
            this.mAdUnitToAdRequestStatus.put(adUnitId, new AdRequestStatus(LoadingStatus.PLAYED));
        }
    }

    boolean canPlay(@NonNull String adUnitId) {
        AdRequestStatus adRequestStatus = this.mAdUnitToAdRequestStatus.get(adUnitId);
        return adRequestStatus != null && LoadingStatus.LOADED.equals(adRequestStatus.getStatus());
    }

    boolean isLoading(@NonNull String adUnitId) {
        if (this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            return this.mAdUnitToAdRequestStatus.get(adUnitId).getStatus() == LoadingStatus.LOADING;
        }
        return false;
    }

    @Nullable
    String getFailoverUrl(@NonNull String adUnitId) {
        if (!this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            return null;
        }
        return this.mAdUnitToAdRequestStatus.get(adUnitId).getFailurl();
    }

    @Nullable
    String getImpressionTrackerUrlString(@NonNull String adUnitId) {
        if (!this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            return null;
        }
        return this.mAdUnitToAdRequestStatus.get(adUnitId).getImpressionUrl();
    }

    @Nullable
    String getClickTrackerUrlString(@NonNull String adUnitId) {
        if (!this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            return null;
        }
        return this.mAdUnitToAdRequestStatus.get(adUnitId).getClickUrl();
    }

    void clearImpressionUrl(@NonNull String adUnitId) {
        if (!this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            return;
        }
        this.mAdUnitToAdRequestStatus.get(adUnitId).setImpressionUrl(null);
    }

    void clearClickUrl(@NonNull String adUnitId) {
        if (!this.mAdUnitToAdRequestStatus.containsKey(adUnitId)) {
            return;
        }
        this.mAdUnitToAdRequestStatus.get(adUnitId).setClickUrl(null);
    }

    private static class AdRequestStatus {

        @Nullable
        private String mClickUrl;

        @Nullable
        private String mFailUrl;

        @Nullable
        private String mImpressionUrl;

        @NonNull
        private LoadingStatus mLoadingStatus;

        public AdRequestStatus(@NonNull LoadingStatus loadingStatus) {
            this(loadingStatus, null, null, null);
        }

        public AdRequestStatus(@NonNull LoadingStatus loadingStatus, @Nullable String failUrl, @Nullable String impressionUrl, @Nullable String clickUrl) {
            Preconditions.checkNotNull(loadingStatus);
            this.mLoadingStatus = loadingStatus;
            this.mFailUrl = failUrl;
            this.mImpressionUrl = impressionUrl;
            this.mClickUrl = clickUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public LoadingStatus getStatus() {
            return this.mLoadingStatus;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStatus(@NonNull LoadingStatus loadingStatus) {
            this.mLoadingStatus = loadingStatus;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public String getFailurl() {
            return this.mFailUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public String getImpressionUrl() {
            return this.mImpressionUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImpressionUrl(@Nullable String impressionUrl) {
            this.mImpressionUrl = impressionUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public String getClickUrl() {
            return this.mClickUrl;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClickUrl(@Nullable String clickUrl) {
            this.mClickUrl = clickUrl;
        }

        public boolean equals(Object o) {
            if (o == null) {
                return false;
            }
            if (this == o) {
                return true;
            }
            if (!(o instanceof AdRequestStatus)) {
                return false;
            }
            AdRequestStatus that = (AdRequestStatus) o;
            return this.mLoadingStatus.equals(that.mLoadingStatus) && TextUtils.equals(this.mFailUrl, that.mFailUrl) && TextUtils.equals(this.mImpressionUrl, that.mImpressionUrl) && TextUtils.equals(this.mClickUrl, that.mClickUrl);
        }

        public int hashCode() {
            int result = this.mLoadingStatus.ordinal() + 899;
            return (((((result * 31) + (this.mFailUrl != null ? this.mFailUrl.hashCode() : 0)) * 31) + (this.mImpressionUrl != null ? this.mImpressionUrl.hashCode() : 0)) * 31) + (this.mClickUrl != null ? this.mClickUrl.hashCode() : 0);
        }
    }
}
