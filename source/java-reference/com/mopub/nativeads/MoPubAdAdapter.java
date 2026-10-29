package com.mopub.nativeads;

import android.content.Context;
import android.database.DataSetObserver;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MoPubAdAdapter extends BaseAdapter {

    @Nullable
    private MoPubNativeAdLoadedListener mAdLoadedListener;

    @NonNull
    private final Adapter mOriginalAdapter;

    @NonNull
    private final MoPubStreamAdPlacer mStreamAdPlacer;

    @NonNull
    private final WeakHashMap<View, Integer> mViewPositionMap;

    @NonNull
    private final VisibilityTracker mVisibilityTracker;

    public MoPubAdAdapter(@NonNull Context context, @NonNull Adapter originalAdapter) {
        this(context, originalAdapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(@NonNull Context context, @NonNull Adapter originalAdapter, @NonNull MoPubNativeAdPositioning.MoPubServerPositioning adPositioning) {
        this(new MoPubStreamAdPlacer(context, adPositioning), originalAdapter, new VisibilityTracker(context));
    }

    public MoPubAdAdapter(@NonNull Context context, @NonNull Adapter originalAdapter, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning adPositioning) {
        this(new MoPubStreamAdPlacer(context, adPositioning), originalAdapter, new VisibilityTracker(context));
    }

    @VisibleForTesting
    MoPubAdAdapter(@NonNull MoPubStreamAdPlacer streamAdPlacer, @NonNull Adapter originalAdapter, @NonNull VisibilityTracker visibilityTracker) {
        this.mOriginalAdapter = originalAdapter;
        this.mStreamAdPlacer = streamAdPlacer;
        this.mViewPositionMap = new WeakHashMap<>();
        this.mVisibilityTracker = visibilityTracker;
        this.mVisibilityTracker.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.1
            @Override // com.mopub.nativeads.VisibilityTracker.VisibilityTrackerListener
            public void onVisibilityChanged(@NonNull List<View> visibleViews, List<View> invisibleViews) {
                MoPubAdAdapter.this.handleVisibilityChange(visibleViews);
            }
        });
        this.mOriginalAdapter.registerDataSetObserver(new DataSetObserver() { // from class: com.mopub.nativeads.MoPubAdAdapter.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                MoPubAdAdapter.this.mStreamAdPlacer.setItemCount(MoPubAdAdapter.this.mOriginalAdapter.getCount());
                MoPubAdAdapter.this.notifyDataSetChanged();
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                MoPubAdAdapter.this.notifyDataSetInvalidated();
            }
        });
        this.mStreamAdPlacer.setAdLoadedListener(new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.3
            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdLoaded(int position) {
                MoPubAdAdapter.this.handleAdLoaded(position);
            }

            @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
            public void onAdRemoved(int position) {
                MoPubAdAdapter.this.handleAdRemoved(position);
            }
        });
        this.mStreamAdPlacer.setItemCount(this.mOriginalAdapter.getCount());
    }

    @VisibleForTesting
    void handleAdLoaded(int position) {
        if (this.mAdLoadedListener != null) {
            this.mAdLoadedListener.onAdLoaded(position);
        }
        notifyDataSetChanged();
    }

    @VisibleForTesting
    void handleAdRemoved(int position) {
        if (this.mAdLoadedListener != null) {
            this.mAdLoadedListener.onAdRemoved(position);
        }
        notifyDataSetChanged();
    }

    @Deprecated
    public final void registerAdRenderer(@NonNull MoPubAdRenderer adRenderer) {
        if (Preconditions.NoThrow.checkNotNull(adRenderer, "Tried to set a null ad renderer on the placer.")) {
            this.mStreamAdPlacer.registerAdRenderer(adRenderer);
        }
    }

    public final void registerViewBinder(@NonNull ViewBinder viewBinder) {
        if (Preconditions.NoThrow.checkNotNull(viewBinder, "Tried to set a null view binder on the placer.")) {
            this.mStreamAdPlacer.registerAdRenderer(new MoPubNativeAdRenderer(viewBinder));
        }
    }

    public final void setAdLoadedListener(@Nullable MoPubNativeAdLoadedListener listener) {
        this.mAdLoadedListener = listener;
    }

    public void loadAds(@NonNull String adUnitId) {
        this.mStreamAdPlacer.loadAds(adUnitId);
    }

    public void loadAds(@NonNull String adUnitId, @Nullable RequestParameters requestParameters) {
        this.mStreamAdPlacer.loadAds(adUnitId, requestParameters);
    }

    public boolean isAd(int position) {
        return this.mStreamAdPlacer.isAd(position);
    }

    public void clearAds() {
        this.mStreamAdPlacer.clearAds();
    }

    public void destroy() {
        this.mStreamAdPlacer.destroy();
        this.mVisibilityTracker.destroy();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return (this.mOriginalAdapter instanceof ListAdapter) && ((ListAdapter) this.mOriginalAdapter).areAllItemsEnabled();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int position) {
        return isAd(position) || ((this.mOriginalAdapter instanceof ListAdapter) && ((ListAdapter) this.mOriginalAdapter).isEnabled(this.mStreamAdPlacer.getOriginalPosition(position)));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mStreamAdPlacer.getAdjustedCount(this.mOriginalAdapter.getCount());
    }

    @Override // android.widget.Adapter
    @Nullable
    public Object getItem(int position) {
        Object ad = this.mStreamAdPlacer.getAdData(position);
        return ad != null ? ad : this.mOriginalAdapter.getItem(this.mStreamAdPlacer.getOriginalPosition(position));
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        Object adData = this.mStreamAdPlacer.getAdData(position);
        return adData != null ? -System.identityHashCode(adData) : this.mOriginalAdapter.getItemId(this.mStreamAdPlacer.getOriginalPosition(position));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.mOriginalAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    @Nullable
    public View getView(int position, View view, ViewGroup viewGroup) {
        View resultView;
        View adView = this.mStreamAdPlacer.getAdView(position, view, viewGroup);
        if (adView != null) {
            resultView = adView;
        } else {
            resultView = this.mOriginalAdapter.getView(this.mStreamAdPlacer.getOriginalPosition(position), view, viewGroup);
        }
        this.mViewPositionMap.put(resultView, Integer.valueOf(position));
        this.mVisibilityTracker.addView(resultView, 0);
        return resultView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        int viewType = this.mStreamAdPlacer.getAdViewType(position);
        return viewType != 0 ? (this.mOriginalAdapter.getViewTypeCount() + viewType) - 1 : this.mOriginalAdapter.getItemViewType(this.mStreamAdPlacer.getOriginalPosition(position));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mOriginalAdapter.getViewTypeCount() + this.mStreamAdPlacer.getAdViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.mOriginalAdapter.isEmpty() && this.mStreamAdPlacer.getAdjustedCount(0) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleVisibilityChange(@NonNull List<View> visibleViews) {
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

    public int getOriginalPosition(int position) {
        return this.mStreamAdPlacer.getOriginalPosition(position);
    }

    public int getAdjustedPosition(int originalPosition) {
        return this.mStreamAdPlacer.getAdjustedPosition(originalPosition);
    }

    public void insertItem(int originalPosition) {
        this.mStreamAdPlacer.insertItem(originalPosition);
    }

    public void removeItem(int originalPosition) {
        this.mStreamAdPlacer.removeItem(originalPosition);
    }

    public void setOnClickListener(@NonNull ListView listView, @Nullable final AdapterView.OnItemClickListener listener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnClickListener with a null ListView")) {
            if (listener == null) {
                listView.setOnItemClickListener(null);
            } else {
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                        if (!MoPubAdAdapter.this.mStreamAdPlacer.isAd(position)) {
                            listener.onItemClick(adapterView, view, MoPubAdAdapter.this.mStreamAdPlacer.getOriginalPosition(position), id);
                        }
                    }
                });
            }
        }
    }

    public void setOnItemLongClickListener(@NonNull ListView listView, @Nullable final AdapterView.OnItemLongClickListener listener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemLongClickListener with a null ListView")) {
            if (listener == null) {
                listView.setOnItemLongClickListener(null);
            } else {
                listView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.5
                    @Override // android.widget.AdapterView.OnItemLongClickListener
                    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int position, long id) {
                        return MoPubAdAdapter.this.isAd(position) || listener.onItemLongClick(adapterView, view, MoPubAdAdapter.this.mStreamAdPlacer.getOriginalPosition(position), id);
                    }
                });
            }
        }
    }

    public void setOnItemSelectedListener(@NonNull ListView listView, @Nullable final AdapterView.OnItemSelectedListener listener) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setOnItemSelectedListener with a null ListView")) {
            if (listener == null) {
                listView.setOnItemSelectedListener(null);
            } else {
                listView.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.mopub.nativeads.MoPubAdAdapter.6
                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onItemSelected(AdapterView<?> adapterView, View view, int position, long id) {
                        if (!MoPubAdAdapter.this.isAd(position)) {
                            listener.onItemSelected(adapterView, view, MoPubAdAdapter.this.mStreamAdPlacer.getOriginalPosition(position), id);
                        }
                    }

                    @Override // android.widget.AdapterView.OnItemSelectedListener
                    public void onNothingSelected(AdapterView<?> adapterView) {
                        listener.onNothingSelected(adapterView);
                    }
                });
            }
        }
    }

    public void setSelection(@NonNull ListView listView, int originalPosition) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.setSelection with a null ListView")) {
            listView.setSelection(this.mStreamAdPlacer.getAdjustedPosition(originalPosition));
        }
    }

    public void smoothScrollToPosition(@NonNull ListView listView, int originalPosition) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.smoothScrollToPosition with a null ListView")) {
            listView.smoothScrollToPosition(this.mStreamAdPlacer.getAdjustedPosition(originalPosition));
        }
    }

    public void refreshAds(@NonNull ListView listView, @NonNull String adUnitId) {
        refreshAds(listView, adUnitId, null);
    }

    public void refreshAds(@NonNull ListView listView, @NonNull String adUnitId, @Nullable RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(listView, "You called MoPubAdAdapter.refreshAds with a null ListView")) {
            View firstView = listView.getChildAt(0);
            int offsetY = firstView == null ? 0 : firstView.getTop();
            int firstPosition = listView.getFirstVisiblePosition();
            int startRange = Math.max(firstPosition - 1, 0);
            while (this.mStreamAdPlacer.isAd(startRange) && startRange > 0) {
                startRange--;
            }
            int lastPosition = listView.getLastVisiblePosition();
            while (this.mStreamAdPlacer.isAd(lastPosition) && lastPosition < getCount() - 1) {
                lastPosition++;
            }
            int originalStartRange = this.mStreamAdPlacer.getOriginalPosition(startRange);
            int originalEndRange = this.mStreamAdPlacer.getOriginalCount(lastPosition + 1);
            int originalCount = this.mStreamAdPlacer.getOriginalCount(getCount());
            this.mStreamAdPlacer.removeAdsInRange(originalEndRange, originalCount);
            int numAdsRemoved = this.mStreamAdPlacer.removeAdsInRange(0, originalStartRange);
            if (numAdsRemoved > 0) {
                listView.setSelectionFromTop(firstPosition - numAdsRemoved, offsetY);
            }
            loadAds(adUnitId, requestParameters);
        }
    }
}
