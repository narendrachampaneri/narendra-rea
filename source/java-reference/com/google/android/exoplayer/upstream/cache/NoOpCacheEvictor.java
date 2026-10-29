package com.google.android.exoplayer.upstream.cache;

/* JADX INFO: loaded from: classes2.dex */
public final class NoOpCacheEvictor implements CacheEvictor {
    @Override // com.google.android.exoplayer.upstream.cache.CacheEvictor
    public void onStartFile(Cache cache, String key, long position, long length) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanAdded(Cache cache, CacheSpan span) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanRemoved(Cache cache, CacheSpan span) {
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan oldSpan, CacheSpan newSpan) {
    }
}
