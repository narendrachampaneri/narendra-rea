package com.google.android.exoplayer.upstream.cache;

import android.net.Uri;
import android.util.Log;
import com.google.android.exoplayer.upstream.DataSink;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.FileDataSource;
import com.google.android.exoplayer.upstream.TeeDataSource;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class CacheDataSource implements DataSource {
    private static final String TAG = "CacheDataSource";
    private final boolean blockOnCache;
    private long bytesRemaining;
    private final Cache cache;
    private final DataSource cacheReadDataSource;
    private final DataSource cacheWriteDataSource;
    private DataSource currentDataSource;
    private final EventListener eventListener;
    private int flags;
    private boolean ignoreCache;
    private final boolean ignoreCacheOnError;
    private String key;
    private CacheSpan lockedSpan;
    private long readPosition;
    private long totalCachedBytesRead;
    private final DataSource upstreamDataSource;
    private Uri uri;

    public interface EventListener {
        void onCachedBytesRead(long j, long j2);
    }

    public CacheDataSource(Cache cache, DataSource upstream, boolean blockOnCache, boolean ignoreCacheOnError) {
        this(cache, upstream, blockOnCache, ignoreCacheOnError, Long.MAX_VALUE);
    }

    public CacheDataSource(Cache cache, DataSource upstream, boolean blockOnCache, boolean ignoreCacheOnError, long maxCacheFileSize) {
        this(cache, upstream, new FileDataSource(), new CacheDataSink(cache, maxCacheFileSize), blockOnCache, ignoreCacheOnError, null);
    }

    public CacheDataSource(Cache cache, DataSource upstream, DataSource cacheReadDataSource, DataSink cacheWriteDataSink, boolean blockOnCache, boolean ignoreCacheOnError, EventListener eventListener) {
        this.cache = cache;
        this.cacheReadDataSource = cacheReadDataSource;
        this.blockOnCache = blockOnCache;
        this.ignoreCacheOnError = ignoreCacheOnError;
        this.upstreamDataSource = upstream;
        if (cacheWriteDataSink != null) {
            this.cacheWriteDataSource = new TeeDataSource(upstream, cacheWriteDataSink);
        } else {
            this.cacheWriteDataSource = null;
        }
        this.eventListener = eventListener;
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        try {
            this.uri = dataSpec.uri;
            this.flags = dataSpec.flags;
            this.key = dataSpec.key;
            this.readPosition = dataSpec.position;
            this.bytesRemaining = dataSpec.length;
            openNextSource();
            return dataSpec.length;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public int read(byte[] buffer, int offset, int max) throws IOException {
        try {
            int bytesRead = this.currentDataSource.read(buffer, offset, max);
            if (bytesRead >= 0) {
                if (this.currentDataSource == this.cacheReadDataSource) {
                    this.totalCachedBytesRead += (long) bytesRead;
                }
                this.readPosition += (long) bytesRead;
                if (this.bytesRemaining != -1) {
                    this.bytesRemaining -= (long) bytesRead;
                    return bytesRead;
                }
                return bytesRead;
            }
            closeCurrentSource();
            if (this.bytesRemaining > 0 && this.bytesRemaining != -1) {
                openNextSource();
                return read(buffer, offset, max);
            }
            return bytesRead;
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    @Override // com.google.android.exoplayer.upstream.DataSource
    public void close() throws IOException {
        notifyBytesRead();
        try {
            closeCurrentSource();
        } catch (IOException e) {
            handleBeforeThrow(e);
            throw e;
        }
    }

    private void openNextSource() throws IOException {
        CacheSpan span;
        DataSpec dataSpec;
        try {
            if (this.ignoreCache) {
                span = null;
            } else if (this.bytesRemaining == -1) {
                Log.w(TAG, "Cache bypassed due to unbounded length.");
                span = null;
            } else if (this.blockOnCache) {
                span = this.cache.startReadWrite(this.key, this.readPosition);
            } else {
                span = this.cache.startReadWriteNonBlocking(this.key, this.readPosition);
            }
            if (span == null) {
                this.currentDataSource = this.upstreamDataSource;
                dataSpec = new DataSpec(this.uri, this.readPosition, this.bytesRemaining, this.key, this.flags);
            } else if (span.isCached) {
                Uri fileUri = Uri.fromFile(span.file);
                long filePosition = this.readPosition - span.position;
                long length = Math.min(span.length - filePosition, this.bytesRemaining);
                dataSpec = new DataSpec(fileUri, this.readPosition, filePosition, length, this.key, this.flags);
                this.currentDataSource = this.cacheReadDataSource;
            } else {
                this.lockedSpan = span;
                long length2 = span.isOpenEnded() ? this.bytesRemaining : Math.min(span.length, this.bytesRemaining);
                dataSpec = new DataSpec(this.uri, this.readPosition, length2, this.key, this.flags);
                this.currentDataSource = this.cacheWriteDataSource != null ? this.cacheWriteDataSource : this.upstreamDataSource;
            }
            this.currentDataSource.open(dataSpec);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    private void closeCurrentSource() throws IOException {
        if (this.currentDataSource != null) {
            try {
                this.currentDataSource.close();
                this.currentDataSource = null;
            } finally {
                if (this.lockedSpan != null) {
                    this.cache.releaseHoleSpan(this.lockedSpan);
                    this.lockedSpan = null;
                }
            }
        }
    }

    private void handleBeforeThrow(IOException exception) {
        if (this.ignoreCacheOnError) {
            if (this.currentDataSource == this.cacheReadDataSource || (exception instanceof CacheDataSink.CacheDataSinkException)) {
                this.ignoreCache = true;
            }
        }
    }

    private void notifyBytesRead() {
        if (this.eventListener != null && this.totalCachedBytesRead > 0) {
            this.eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
            this.totalCachedBytesRead = 0L;
        }
    }
}
