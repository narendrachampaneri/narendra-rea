package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;
    private static final int DEFAULT_AD_VIEW_TYPE = -1;
    private static final MoPubNativeAdLoadedListener EMPTY_NATIVE_AD_LOADED_LISTENER = new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.1
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int position) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int position) {
        }
    };
    private static final int MAX_VISIBLE_RANGE = 100;
    private static final int RANGE_BUFFER = 10;
    private int adViewType;

    @NonNull
    private MoPubNativeAdLoadedListener mAdLoadedListener;

    @Nullable
    private MoPubAdRenderer mAdRenderer;

    @NonNull
    private final NativeAdSource mAdSource;

    @Nullable
    private String mAdUnitId;

    @NonNull
    private final Context mContext;
    private boolean mHasPlacedAds;
    private boolean mHasReceivedAds;
    private boolean mHasReceivedPositions;

    @NonNull
    private final ImpressionTracker mImpressionTracker;
    private int mItemCount;

    @NonNull
    private final WeakHashMap<View, NativeResponse> mNativeResponseMap;
    private boolean mNeedsPlacement;

    @Nullable
    private PlacementData mPendingPlacementData;

    @NonNull
    private PlacementData mPlacementData;

    @NonNull
    private final Handler mPlacementHandler;

    @NonNull
    private final Runnable mPlacementRunnable;

    @NonNull
    private final PositioningSource mPositioningSource;

    @NonNull
    private final HashMap<NativeResponse, WeakReference<View>> mViewMap;
    private int mVisibleRangeEnd;
    private int mVisibleRangeStart;

    public MoPubStreamAdPlacer(@NonNull Context context) {
        this(context, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(@NonNull Context context, @NonNull MoPubNativeAdPositioning.MoPubServerPositioning adPositioning) {
        this(context, new NativeAdSource(), new ImpressionTracker(context), new ServerPositioningSource(context));
    }

    public MoPubStreamAdPlacer(@NonNull Context context, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning adPositioning) {
        this(context, new NativeAdSource(), new ImpressionTracker(context), new ClientPositioningSource(adPositioning));
    }

    @VisibleForTesting
    MoPubStreamAdPlacer(@NonNull Context context, @NonNull NativeAdSource adSource, @NonNull ImpressionTracker impressionTracker, @NonNull PositioningSource positioningSource) {
        this.adViewType = -1;
        this.mAdLoadedListener = EMPTY_NATIVE_AD_LOADED_LISTENER;
        Preconditions.checkNotNull(context, "context is not allowed to be null");
        Preconditions.checkNotNull(adSource, "adSource is not allowed to be null");
        Preconditions.checkNotNull(impressionTracker, "impressionTracker is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.mContext = context;
        this.mImpressionTracker = impressionTracker;
        this.mPositioningSource = positioningSource;
        this.mAdSource = adSource;
        this.mPlacementData = PlacementData.empty();
        this.mNativeResponseMap = new WeakHashMap<>();
        this.mViewMap = new HashMap<>();
        this.mPlacementHandler = new Handler();
        this.mPlacementRunnable = new Runnable() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.2
            @Override // java.lang.Runnable
            public void run() {
                if (MoPubStreamAdPlacer.this.mNeedsPlacement) {
                    MoPubStreamAdPlacer.this.placeAds();
                    MoPubStreamAdPlacer.this.mNeedsPlacement = false;
                }
            }
        };
        this.mVisibleRangeStart = 0;
        this.mVisibleRangeEnd = 0;
    }

    public void registerAdRenderer(@NonNull MoPubAdRenderer adRenderer) {
        registerAdRenderer(adRenderer, -1);
    }

    public void registerAdRenderer(@NonNull MoPubAdRenderer adRenderer, int viewType) {
        if (Preconditions.NoThrow.checkNotNull(adRenderer, "Cannot register a null adRenderer")) {
            this.adViewType = viewType;
            this.mAdRenderer = adRenderer;
        }
    }

    @Nullable
    public MoPubAdRenderer getAdRendererForViewType(int viewType) {
        if (viewType == this.adViewType) {
            return this.mAdRenderer;
        }
        return null;
    }

    public void setAdLoadedListener(@Nullable MoPubNativeAdLoadedListener listener) {
        if (listener == null) {
            listener = EMPTY_NATIVE_AD_LOADED_LISTENER;
        }
        this.mAdLoadedListener = listener;
    }

    public void loadAds(@NonNull String adUnitId) {
        loadAds(adUnitId, null);
    }

    public void loadAds(@NonNull String adUnitId, @Nullable RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(adUnitId, "Cannot load ads with a null ad unit ID")) {
            if (this.mAdRenderer == null) {
                MoPubLog.w("You must call registerAdRenderer before loading ads");
                return;
            }
            this.mAdUnitId = adUnitId;
            this.mHasPlacedAds = false;
            this.mHasReceivedPositions = false;
            this.mHasReceivedAds = false;
            this.mPositioningSource.loadPositions(adUnitId, new PositioningSource.PositioningListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.3
                @Override // com.mopub.nativeads.PositioningSource.PositioningListener
                public void onLoad(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning positioning) {
                    MoPubStreamAdPlacer.this.handlePositioningLoad(positioning);
                }

                @Override // com.mopub.nativeads.PositioningSource.PositioningListener
                public void onFailed() {
                    MoPubLog.d("Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
                }
            });
            this.mAdSource.setAdSourceListener(new NativeAdSource.AdSourceListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.4
                @Override // com.mopub.nativeads.NativeAdSource.AdSourceListener
                public void onAdsAvailable() {
                    MoPubStreamAdPlacer.this.handleAdsAvailable();
                }
            });
            this.mAdSource.loadAds(this.mContext, adUnitId, requestParameters);
        }
    }

    @VisibleForTesting
    void handlePositioningLoad(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning positioning) {
        PlacementData placementData = PlacementData.fromAdPositioning(positioning);
        if (this.mHasReceivedAds) {
            placeInitialAds(placementData);
        } else {
            this.mPendingPlacementData = placementData;
        }
        this.mHasReceivedPositions = true;
    }

    @VisibleForTesting
    void handleAdsAvailable() {
        if (this.mHasPlacedAds) {
            notifyNeedsPlacement();
            return;
        }
        if (this.mHasReceivedPositions) {
            placeInitialAds(this.mPendingPlacementData);
        }
        this.mHasReceivedAds = true;
    }

    private void placeInitialAds(PlacementData placementData) {
        removeAdsInRange(0, this.mItemCount);
        this.mPlacementData = placementData;
        placeAds();
        this.mHasPlacedAds = true;
    }

    public void placeAdsInRange(int startPosition, int endPosition) {
        this.mVisibleRangeStart = startPosition;
        this.mVisibleRangeEnd = Math.min(endPosition, startPosition + 100);
        notifyNeedsPlacement();
    }

    public boolean isAd(int position) {
        return this.mPlacementData.isPlacedAd(position);
    }

    public void clearAds() {
        removeAdsInRange(0, this.mItemCount);
        this.mAdSource.clear();
    }

    public void destroy() {
        this.mPlacementHandler.removeMessages(0);
        this.mAdSource.clear();
        this.mImpressionTracker.destroy();
        this.mPlacementData.clearAds();
    }

    @Nullable
    public Object getAdData(int position) {
        return this.mPlacementData.getPlacedAd(position);
    }

    @Nullable
    public View getAdView(int position, @Nullable View convertView, @Nullable ViewGroup parent) {
        NativeAdData adData = this.mPlacementData.getPlacedAd(position);
        if (adData == null) {
            return null;
        }
        View view = convertView != null ? convertView : adData.getAdRenderer().createAdView(this.mContext, parent);
        bindAdView(adData, view);
        return view;
    }

    public void bindAdView(@NonNull NativeAdData adData, @NonNull View adView) {
        NativeResponse nativeResponse = adData.getAd();
        WeakReference<View> mappedViewRef = this.mViewMap.get(nativeResponse);
        View mappedView = null;
        if (mappedViewRef != null) {
            View mappedView2 = mappedViewRef.get();
            mappedView = mappedView2;
        }
        if (!adView.equals(mappedView)) {
            clearNativeResponse(mappedView);
            clearNativeResponse(adView);
            prepareNativeResponse(nativeResponse, adView);
            adData.getAdRenderer().renderAdView(adView, nativeResponse);
        }
    }

    public int removeAdsInRange(int originalStartPosition, int originalEndPosition) {
        int[] positions = this.mPlacementData.getPlacedAdPositions();
        int adjustedStartRange = this.mPlacementData.getAdjustedPosition(originalStartPosition);
        int adjustedEndRange = this.mPlacementData.getAdjustedPosition(originalEndPosition);
        ArrayList<Integer> removedPositions = new ArrayList<>();
        for (int i = positions.length - 1; i >= 0; i--) {
            int position = positions[i];
            if (position >= adjustedStartRange && position < adjustedEndRange) {
                removedPositions.add(Integer.valueOf(position));
                if (position < this.mVisibleRangeStart) {
                    this.mVisibleRangeStart--;
                }
                this.mItemCount--;
            }
        }
        int clearedAdsCount = this.mPlacementData.clearAdsInRange(adjustedStartRange, adjustedEndRange);
        Iterator<Integer> it = removedPositions.iterator();
        while (it.hasNext()) {
            this.mAdLoadedListener.onAdRemoved(it.next().intValue());
        }
        return clearedAdsCount;
    }

    public int getAdViewTypeCount() {
        return 1;
    }

    public int getAdViewType(int position) {
        return isAd(position) ? 1 : 0;
    }

    public int getOriginalPosition(int position) {
        return this.mPlacementData.getOriginalPosition(position);
    }

    public int getAdjustedPosition(int originalPosition) {
        return this.mPlacementData.getAdjustedPosition(originalPosition);
    }

    public int getOriginalCount(int count) {
        return this.mPlacementData.getOriginalCount(count);
    }

    public int getAdjustedCount(int originalCount) {
        return this.mPlacementData.getAdjustedCount(originalCount);
    }

    public void setItemCount(int originalCount) {
        this.mItemCount = this.mPlacementData.getAdjustedCount(originalCount);
        if (this.mHasPlacedAds) {
            notifyNeedsPlacement();
        }
    }

    public void insertItem(int originalPosition) {
        this.mPlacementData.insertItem(originalPosition);
    }

    public void removeItem(int originalPosition) {
        this.mPlacementData.removeItem(originalPosition);
    }

    public void moveItem(int originalPosition, int newPosition) {
        this.mPlacementData.moveItem(originalPosition, newPosition);
    }

    private void notifyNeedsPlacement() {
        if (!this.mNeedsPlacement) {
            this.mNeedsPlacement = true;
            this.mPlacementHandler.post(this.mPlacementRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void placeAds() {
        if (tryPlaceAdsInRange(this.mVisibleRangeStart, this.mVisibleRangeEnd)) {
            tryPlaceAdsInRange(this.mVisibleRangeEnd, this.mVisibleRangeEnd + 10);
        }
    }

    private boolean tryPlaceAdsInRange(int start, int end) {
        int position = start;
        int lastPosition = end - 1;
        while (position <= lastPosition && position != -1 && position < this.mItemCount) {
            if (this.mPlacementData.shouldPlaceAd(position)) {
                if (!tryPlaceAd(position)) {
                    return false;
                }
                lastPosition++;
            }
            position = this.mPlacementData.nextInsertionPosition(position);
        }
        return true;
    }

    private boolean tryPlaceAd(int position) {
        NativeResponse adResponse = this.mAdSource.dequeueAd();
        if (adResponse == null) {
            return false;
        }
        NativeAdData adData = createAdData(adResponse);
        this.mPlacementData.placeAd(position, adData);
        this.mItemCount++;
        this.mAdLoadedListener.onAdLoaded(position);
        return true;
    }

    @NonNull
    private NativeAdData createAdData(@NonNull NativeResponse adResponse) {
        Preconditions.checkNotNull(this.mAdUnitId);
        Preconditions.checkNotNull(this.mAdRenderer);
        return new NativeAdData(this.mAdUnitId, this.mAdRenderer, adResponse);
    }

    private void clearNativeResponse(@Nullable View view) {
        if (view != null) {
            this.mImpressionTracker.removeView(view);
            NativeResponse lastNativeResponse = this.mNativeResponseMap.get(view);
            if (lastNativeResponse != null) {
                lastNativeResponse.clear(view);
                this.mNativeResponseMap.remove(view);
                this.mViewMap.remove(lastNativeResponse);
            }
        }
    }

    private void prepareNativeResponse(@NonNull NativeResponse nativeResponse, @NonNull View view) {
        this.mViewMap.put(nativeResponse, new WeakReference<>(view));
        this.mNativeResponseMap.put(view, nativeResponse);
        if (!nativeResponse.isOverridingImpressionTracker()) {
            this.mImpressionTracker.addView(view, nativeResponse);
        }
        nativeResponse.prepare(view);
    }
}
