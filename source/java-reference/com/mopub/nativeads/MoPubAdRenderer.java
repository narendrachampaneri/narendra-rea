package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public interface MoPubAdRenderer<T> {
    @NonNull
    View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup);

    void renderAdView(@NonNull View view, @NonNull T t);
}
