package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class MoPubRecyclerAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    static final int NATIVE_AD_VIEW_TYPE_BASE = -56;

    @Nullable
    private MoPubNativeAdLoadedListener mAdLoadedListener;

    @NonNull
    private final RecyclerView.AdapterDataObserver mAdapterDataObserver;

    @NonNull
    private final RecyclerView.Adapter mOriginalAdapter;

    @Nullable
    private RecyclerView mRecyclerView;

    @NonNull
    private ContentChangeStrategy mStrategy;

    @NonNull
    private final MoPubStreamAdPlacer mStreamAdPlacer;

    @NonNull
    private final WeakHashMap<View, Integer> mViewPositionMap;

    @NonNull
    private final VisibilityTracker mVisibilityTracker;

    public enum ContentChangeStrategy {
        INSERT_AT_END,
        MOVE_ALL_ADS_WITH_CONTENT,
        KEEP_ADS_FIXED
    }

    public MoPubRecyclerAdapter(@NonNull Context context, @NonNull RecyclerView.Adapter originalAdapter) {
        this(context, originalAdapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubRecyclerAdapter(@NonNull Context context, @NonNull RecyclerView.Adapter originalAdapter, @NonNull MoPubNativeAdPositioning.MoPubServerPositioning adPositioning) {
        this(new MoPubStreamAdPlacer(context, adPositioning), originalAdapter, new VisibilityTracker(context));
    }

    public MoPubRecyclerAdapter(@NonNull Context context, @NonNull RecyclerView.Adapter originalAdapter, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning adPositioning) {
        this(new MoPubStreamAdPlacer(context, adPositioning), originalAdapter, new VisibilityTracker(context));
    }

    @VisibleForTesting
    MoPubRecyclerAdapter(@NonNull MoPubStreamAdPlacer streamAdPlacer, @NonNull RecyclerView.Adapter originalAdapter, @NonNull VisibilityTracker visibilityTracker) {
        this.mStrategy = ContentChangeStrategy.INSERT_AT_END;
        this.mViewPositionMap = new WeakHashMap<>();
        this.mOriginalAdapter = originalAdapter;
        this.mVisibilityTracker = visibilityTracker;
        this.mVisibilityTracker.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.1
            @Override // com.mopub.nativeads.VisibilityTracker.VisibilityTrackerListener
            public void onVisibilityChanged(List<View> visibleViews, List<View> invisibleViews) {
                MoPubRecyclerAdapter.this.handleVisibilityChanged(visibleViews, invisibleViews);
            }
        });
        setHasStableIdsInternal(this.mOriginalAdapter.hasStableIds());
        this.mStreamAdPlacer = streamAdPlacer;
        this.mStreamAdPlacer.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.2
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdLoaded(int position) {
                MoPubRecyclerAdapter.this.handleAdLoaded(position);
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdRemoved(int position) {
                MoPubRecyclerAdapter.this.handleAdRemoved(position);
            }
        });
        this.mStreamAdPlacer.setItemCount(this.mOriginalAdapter.getItemCount());
        this.mAdapterDataObserver = new RecyclerView.AdapterDataObserver() { // from class: com.mopub.nativeads.MoPubRecyclerAdapter.3
            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                MoPubRecyclerAdapter.this.mStreamAdPlacer.setItemCount(MoPubRecyclerAdapter.this.mOriginalAdapter.getItemCount());
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int positionStart, int itemCount) {
                int adjustedEndPosition = MoPubRecyclerAdapter.this.mStreamAdPlacer.getAdjustedPosition((positionStart + itemCount) - 1);
                int adjustedStartPosition = MoPubRecyclerAdapter.this.mStreamAdPlacer.getAdjustedPosition(positionStart);
                int adjustedCount = (adjustedEndPosition - adjustedStartPosition) + 1;
                MoPubRecyclerAdapter.this.notifyItemRangeChanged(adjustedStartPosition, adjustedCount);
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int positionStart, int itemCount) {
                int adjustedStartPosition = MoPubRecyclerAdapter.this.mStreamAdPlacer.getAdjustedPosition(positionStart);
                int newOriginalCount = MoPubRecyclerAdapter.this.mOriginalAdapter.getItemCount();
                MoPubRecyclerAdapter.this.mStreamAdPlacer.setItemCount(newOriginalCount);
                boolean addingToEnd = positionStart + itemCount >= newOriginalCount;
                if (ContentChangeStrategy.KEEP_ADS_FIXED == MoPubRecyclerAdapter.this.mStrategy || (ContentChangeStrategy.INSERT_AT_END == MoPubRecyclerAdapter.this.mStrategy && addingToEnd)) {
                    MoPubRecyclerAdapter.this.notifyDataSetChanged();
                    return;
                }
                for (int i = 0; i < itemCount; i++) {
                    MoPubRecyclerAdapter.this.mStreamAdPlacer.insertItem(positionStart);
                }
                MoPubRecyclerAdapter.this.notifyItemRangeInserted(adjustedStartPosition, itemCount);
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int positionStart, int itemsRemoved) {
                int adjustedStartPosition = MoPubRecyclerAdapter.this.mStreamAdPlacer.getAdjustedPosition(positionStart);
                int newOriginalCount = MoPubRecyclerAdapter.this.mOriginalAdapter.getItemCount();
                MoPubRecyclerAdapter.this.mStreamAdPlacer.setItemCount(newOriginalCount);
                boolean removingFromEnd = positionStart + itemsRemoved >= newOriginalCount;
                if (ContentChangeStrategy.KEEP_ADS_FIXED != MoPubRecyclerAdapter.this.mStrategy && (ContentChangeStrategy.INSERT_AT_END != MoPubRecyclerAdapter.this.mStrategy || !removingFromEnd)) {
                    int oldAdjustedCount = MoPubRecyclerAdapter.this.mStreamAdPlacer.getAdjustedCount(newOriginalCount + itemsRemoved);
                    for (int i = 0; i < itemsRemoved; i++) {
                        MoPubRecyclerAdapter.this.mStreamAdPlacer.removeItem(positionStart);
                    }
                    int itemsRemovedIncludingAds = oldAdjustedCount - MoPubRecyclerAdapter.this.mStreamAdPlacer.getAdjustedCount(newOriginalCount);
                    MoPubRecyclerAdapter.this.notifyItemRangeRemoved(adjustedStartPosition - (itemsRemovedIncludingAds - itemsRemoved), itemsRemovedIncludingAds);
                    return;
                }
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }

            @Override // android.support.v7.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int fromPosition, int toPosition, int itemCount) {
                MoPubRecyclerAdapter.this.notifyDataSetChanged();
            }
        };
        this.mOriginalAdapter.registerAdapterDataObserver(this.mAdapterDataObserver);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        this.mRecyclerView = null;
    }

    public void setAdLoadedListener(@Nullable MoPubNativeAdLoadedListener listener) {
        this.mAdLoadedListener = listener;
    }

    public void registerViewBinder(@NonNull ViewBinder viewBinder) {
        this.mStreamAdPlacer.registerAdRenderer(new MoPubNativeAdRenderer(viewBinder), -55);
    }

    public void loadAds(@NonNull String adUnitId) {
        this.mStreamAdPlacer.loadAds(adUnitId);
    }

    public void loadAds(@NonNull String adUnitId, @Nullable RequestParameters requestParameters) {
        this.mStreamAdPlacer.loadAds(adUnitId, requestParameters);
    }

    public static int computeScrollOffset(@NonNull LinearLayoutManager linearLayoutManager, @Nullable RecyclerView.ViewHolder holder) {
        if (holder == null) {
            return 0;
        }
        View view = holder.itemView;
        if (linearLayoutManager.canScrollVertically()) {
            if (linearLayoutManager.getStackFromEnd()) {
                int offset = view.getBottom();
                return offset;
            }
            int offset2 = view.getTop();
            return offset2;
        }
        if (!linearLayoutManager.canScrollHorizontally()) {
            return 0;
        }
        if (linearLayoutManager.getStackFromEnd()) {
            int offset3 = view.getRight();
            return offset3;
        }
        int offset4 = view.getLeft();
        return offset4;
    }

    public void refreshAds(@NonNull String adUnitId) {
        refreshAds(adUnitId, null);
    }

    public void refreshAds(@NonNull String adUnitId, @Nullable RequestParameters requestParameters) {
        if (this.mRecyclerView == null) {
            MoPubLog.w("This adapter is not attached to a RecyclerView and cannot be refreshed.");
            return;
        }
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null) {
            MoPubLog.w("Can't refresh ads when there is no layout manager on a RecyclerView.");
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int firstPosition = linearLayoutManager.findFirstVisibleItemPosition();
            RecyclerView.ViewHolder holder = this.mRecyclerView.findViewHolderForLayoutPosition(firstPosition);
            int scrollOffset = computeScrollOffset(linearLayoutManager, holder);
            int startOfRange = Math.max(0, firstPosition - 1);
            while (this.mStreamAdPlacer.isAd(startOfRange) && startOfRange > 0) {
                startOfRange--;
            }
            int itemCount = getItemCount();
            int endOfRange = linearLayoutManager.findLastVisibleItemPosition();
            while (this.mStreamAdPlacer.isAd(endOfRange) && endOfRange < itemCount - 1) {
                endOfRange++;
            }
            int originalStartOfRange = this.mStreamAdPlacer.getOriginalPosition(startOfRange);
            int originalEndOfRange = this.mStreamAdPlacer.getOriginalPosition(endOfRange);
            int endCount = this.mOriginalAdapter.getItemCount();
            this.mStreamAdPlacer.removeAdsInRange(originalEndOfRange, endCount);
            int numAdsRemoved = this.mStreamAdPlacer.removeAdsInRange(0, originalStartOfRange);
            if (numAdsRemoved > 0) {
                linearLayoutManager.scrollToPositionWithOffset(firstPosition - numAdsRemoved, scrollOffset);
            }
            loadAds(adUnitId, requestParameters);
            return;
        }
        MoPubLog.w("This LayoutManager can't be refreshed.");
    }

    public void clearAds() {
        this.mStreamAdPlacer.clearAds();
    }

    public boolean isAd(int position) {
        return this.mStreamAdPlacer.isAd(position);
    }

    public int getAdjustedPosition(int originalPosition) {
        return this.mStreamAdPlacer.getAdjustedPosition(originalPosition);
    }

    public int getOriginalPosition(int position) {
        return this.mStreamAdPlacer.getOriginalPosition(position);
    }

    public void setContentChangeStrategy(@NonNull ContentChangeStrategy strategy) {
        if (Preconditions.NoThrow.checkNotNull(strategy)) {
            this.mStrategy = strategy;
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mStreamAdPlacer.getAdjustedCount(this.mOriginalAdapter.getItemCount());
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType >= NATIVE_AD_VIEW_TYPE_BASE && viewType <= this.mStreamAdPlacer.getAdViewTypeCount() + NATIVE_AD_VIEW_TYPE_BASE) {
            MoPubAdRenderer adRenderer = this.mStreamAdPlacer.getAdRendererForViewType(viewType);
            if (adRenderer == null) {
                MoPubLog.w("No view binder was registered for ads in MoPubRecyclerAdapter.");
                return null;
            }
            return new MoPubRecyclerViewHolder(adRenderer.createAdView(parent.getContext(), parent));
        }
        return this.mOriginalAdapter.onCreateViewHolder(parent, viewType);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Object adData = this.mStreamAdPlacer.getAdData(position);
        if (adData != null) {
            this.mStreamAdPlacer.bindAdView((NativeAdData) adData, holder.itemView);
            return;
        }
        this.mViewPositionMap.put(holder.itemView, Integer.valueOf(position));
        this.mVisibilityTracker.addView(holder.itemView, 0);
        this.mOriginalAdapter.onBindViewHolder(holder, this.mStreamAdPlacer.getOriginalPosition(position));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        int type = this.mStreamAdPlacer.getAdViewType(position);
        return type != 0 ? type + NATIVE_AD_VIEW_TYPE_BASE : this.mOriginalAdapter.getItemViewType(this.mStreamAdPlacer.getOriginalPosition(position));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void setHasStableIds(boolean hasStableIds) {
        setHasStableIdsInternal(hasStableIds);
        this.mOriginalAdapter.unregisterAdapterDataObserver(this.mAdapterDataObserver);
        this.mOriginalAdapter.setHasStableIds(hasStableIds);
        this.mOriginalAdapter.registerAdapterDataObserver(this.mAdapterDataObserver);
    }

    public void destroy() {
        this.mOriginalAdapter.unregisterAdapterDataObserver(this.mAdapterDataObserver);
        this.mStreamAdPlacer.destroy();
        this.mVisibilityTracker.destroy();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public long getItemId(int position) {
        if (!this.mOriginalAdapter.hasStableIds()) {
            return -1L;
        }
        Object adData = this.mStreamAdPlacer.getAdData(position);
        if (adData != null) {
            return -System.identityHashCode(adData);
        }
        return this.mOriginalAdapter.getItemId(this.mStreamAdPlacer.getOriginalPosition(position));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder holder) {
        return holder instanceof MoPubRecyclerViewHolder ? super.onFailedToRecycleView(holder) : this.mOriginalAdapter.onFailedToRecycleView(holder);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder holder) {
        if (holder instanceof MoPubRecyclerViewHolder) {
            super.onViewAttachedToWindow(holder);
        } else {
            this.mOriginalAdapter.onViewAttachedToWindow(holder);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder holder) {
        if (holder instanceof MoPubRecyclerViewHolder) {
            super.onViewDetachedFromWindow(holder);
        } else {
            this.mOriginalAdapter.onViewDetachedFromWindow(holder);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder holder) {
        if (holder instanceof MoPubRecyclerViewHolder) {
            super.onViewRecycled(holder);
        } else {
            this.mOriginalAdapter.onViewRecycled(holder);
        }
    }

    @VisibleForTesting
    void handleAdLoaded(int position) {
        if (this.mAdLoadedListener != null) {
            this.mAdLoadedListener.onAdLoaded(position);
        }
        notifyItemInserted(position);
    }

    @VisibleForTesting
    void handleAdRemoved(int position) {
        if (this.mAdLoadedListener != null) {
            this.mAdLoadedListener.onAdRemoved(position);
        }
        notifyItemRemoved(position);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVisibilityChanged(List<View> visibleViews, List<View> invisibleViews) {
        int min = Integer.MAX_VALUE;
        int max = 0;
        for (View view : visibleViews) {
            Integer pos = this.mViewPositionMap.get(view);
            if (pos != null) {
                min = Math.min(pos.intValue(), min);
                max = Math.max(pos.intValue(), max);
            }
        }
        this.mStreamAdPlacer.placeAdsInRange(min, max + 1);
    }

    private void setHasStableIdsInternal(boolean hasStableIds) {
        super.setHasStableIds(hasStableIds);
    }
}
