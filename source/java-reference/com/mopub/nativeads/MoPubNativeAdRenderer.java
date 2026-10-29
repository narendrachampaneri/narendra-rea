package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.VisibleForTesting;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MoPubNativeAdRenderer implements MoPubAdRenderer<NativeResponse> {

    @NonNull
    private final ViewBinder mViewBinder;

    @NonNull
    @VisibleForTesting
    final WeakHashMap<View, NativeViewHolder> mViewHolderMap = new WeakHashMap<>();

    public MoPubNativeAdRenderer(@NonNull ViewBinder viewBinder) {
        this.mViewBinder = viewBinder;
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup parent) {
        return LayoutInflater.from(context).inflate(this.mViewBinder.layoutId, parent, false);
    }

    @Override // com.mopub.nativeads.MoPubAdRenderer
    public void renderAdView(@NonNull View view, @NonNull NativeResponse nativeResponse) {
        NativeViewHolder nativeViewHolder = this.mViewHolderMap.get(view);
        if (nativeViewHolder == null) {
            nativeViewHolder = NativeViewHolder.fromViewBinder(view, this.mViewBinder);
            this.mViewHolderMap.put(view, nativeViewHolder);
        }
        nativeViewHolder.update(nativeResponse);
        nativeViewHolder.updateExtras(nativeResponse, this.mViewBinder);
        nativeViewHolder.setViewVisibility(0);
    }
}
