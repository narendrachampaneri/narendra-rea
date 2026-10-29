package com.google.android.exoplayer.upstream.cache;

import android.os.ConditionVariable;
import com.google.android.exoplayer.util.Assertions;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public final class SimpleCache implements Cache {
    private final File cacheDir;
    private final CacheEvictor evictor;
    private long totalSpace = 0;
    private final HashMap<String, CacheSpan> lockedSpans = new HashMap<>();
    private final HashMap<String, TreeSet<CacheSpan>> cachedSpans = new HashMap<>();
    private final HashMap<String, ArrayList<Cache.Listener>> listeners = new HashMap<>();

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.exoplayer.upstream.cache.SimpleCache$1] */
    public SimpleCache(File cacheDir, CacheEvictor evictor) {
        this.cacheDir = cacheDir;
        this.evictor = evictor;
        final ConditionVariable conditionVariable = new ConditionVariable();
        new Thread() { // from class: com.google.android.exoplayer.upstream.cache.SimpleCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (SimpleCache.this) {
                    conditionVariable.open();
                    SimpleCache.this.initialize();
                }
            }
        }.start();
        conditionVariable.block();
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> addListener(String key, Cache.Listener listener) {
        ArrayList<Cache.Listener> listenersForKey = this.listeners.get(key);
        if (listenersForKey == null) {
            listenersForKey = new ArrayList<>();
            this.listeners.put(key, listenersForKey);
        }
        listenersForKey.add(listener);
        return getCachedSpans(key);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void removeListener(String key, Cache.Listener listener) {
        ArrayList<Cache.Listener> listenersForKey = this.listeners.get(key);
        if (listenersForKey != null) {
            listenersForKey.remove(listener);
            if (listenersForKey.isEmpty()) {
                this.listeners.remove(key);
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized NavigableSet<CacheSpan> getCachedSpans(String key) {
        TreeSet<CacheSpan> spansForKey;
        spansForKey = this.cachedSpans.get(key);
        return spansForKey == null ? null : new TreeSet((SortedSet) spansForKey);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized Set<String> getKeys() {
        return new HashSet(this.cachedSpans.keySet());
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized long getCacheSpace() {
        return this.totalSpace;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized CacheSpan startReadWrite(String key, long position) throws InterruptedException {
        CacheSpan span;
        CacheSpan lookupSpan = CacheSpan.createLookup(key, position);
        while (true) {
            span = startReadWriteNonBlocking(lookupSpan);
            if (span == null) {
                wait();
            }
        }
        return span;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized CacheSpan startReadWriteNonBlocking(String key, long position) {
        return startReadWriteNonBlocking(CacheSpan.createLookup(key, position));
    }

    private synchronized CacheSpan startReadWriteNonBlocking(CacheSpan lookupSpan) {
        CacheSpan cacheSpan;
        CacheSpan spanningRegion = getSpan(lookupSpan);
        if (spanningRegion.isCached) {
            TreeSet<CacheSpan> spansForKey = this.cachedSpans.get(spanningRegion.key);
            Assertions.checkState(spansForKey.remove(spanningRegion));
            CacheSpan spanningRegion2 = spanningRegion.touch();
            spansForKey.add(spanningRegion2);
            notifySpanTouched(spanningRegion, spanningRegion2);
            cacheSpan = spanningRegion2;
        } else if (!this.lockedSpans.containsKey(lookupSpan.key)) {
            this.lockedSpans.put(lookupSpan.key, spanningRegion);
            cacheSpan = spanningRegion;
        } else {
            cacheSpan = null;
        }
        return cacheSpan;
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized File startFile(String key, long position, long length) {
        Assertions.checkState(this.lockedSpans.containsKey(key));
        if (!this.cacheDir.exists()) {
            removeStaleSpans();
            this.cacheDir.mkdirs();
        }
        this.evictor.onStartFile(this, key, position, length);
        return CacheSpan.getCacheFileName(this.cacheDir, key, position, System.currentTimeMillis());
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void commitFile(File file) {
        CacheSpan span = CacheSpan.createCacheEntry(file);
        Assertions.checkState(span != null);
        Assertions.checkState(this.lockedSpans.containsKey(span.key));
        if (file.exists()) {
            long length = file.length();
            if (length == 0) {
                file.delete();
            } else {
                addSpan(span);
                notifyAll();
            }
        }
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void releaseHoleSpan(CacheSpan holeSpan) {
        Assertions.checkState(holeSpan == this.lockedSpans.remove(holeSpan.key));
        notifyAll();
    }

    private CacheSpan getSpan(CacheSpan lookupSpan) {
        String key = lookupSpan.key;
        long offset = lookupSpan.position;
        TreeSet<CacheSpan> entries = this.cachedSpans.get(key);
        if (entries == null) {
            return CacheSpan.createOpenHole(key, lookupSpan.position);
        }
        CacheSpan floorSpan = entries.floor(lookupSpan);
        if (floorSpan != null && floorSpan.position <= offset && offset < floorSpan.position + floorSpan.length) {
            if (!floorSpan.file.exists()) {
                removeStaleSpans();
                return getSpan(lookupSpan);
            }
            return floorSpan;
        }
        CacheSpan ceilEntry = entries.ceiling(lookupSpan);
        return ceilEntry == null ? CacheSpan.createOpenHole(key, lookupSpan.position) : CacheSpan.createClosedHole(key, lookupSpan.position, ceilEntry.position - lookupSpan.position);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize() {
        if (!this.cacheDir.exists()) {
            this.cacheDir.mkdirs();
        }
        File[] files = this.cacheDir.listFiles();
        if (files != null) {
            for (File file : files) {
                if (file.length() == 0) {
                    file.delete();
                } else {
                    CacheSpan span = CacheSpan.createCacheEntry(file);
                    if (span == null) {
                        file.delete();
                    } else {
                        addSpan(span);
                    }
                }
            }
        }
    }

    private void addSpan(CacheSpan span) {
        TreeSet<CacheSpan> spansForKey = this.cachedSpans.get(span.key);
        if (spansForKey == null) {
            spansForKey = new TreeSet<>();
            this.cachedSpans.put(span.key, spansForKey);
        }
        spansForKey.add(span);
        this.totalSpace += span.length;
        notifySpanAdded(span);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized void removeSpan(CacheSpan span) {
        TreeSet<CacheSpan> spansForKey = this.cachedSpans.get(span.key);
        this.totalSpace -= span.length;
        Assertions.checkState(spansForKey.remove(span));
        span.file.delete();
        if (spansForKey.isEmpty()) {
            this.cachedSpans.remove(span.key);
        }
        notifySpanRemoved(span);
    }

    private void removeStaleSpans() {
        Iterator<Map.Entry<String, TreeSet<CacheSpan>>> iterator = this.cachedSpans.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, TreeSet<CacheSpan>> next = iterator.next();
            Iterator<CacheSpan> spanIterator = next.getValue().iterator();
            boolean isEmpty = true;
            while (spanIterator.hasNext()) {
                CacheSpan span = spanIterator.next();
                if (!span.file.exists()) {
                    spanIterator.remove();
                    if (span.isCached) {
                        this.totalSpace -= span.length;
                    }
                    notifySpanRemoved(span);
                } else {
                    isEmpty = false;
                }
            }
            if (isEmpty) {
                iterator.remove();
            }
        }
    }

    private void notifySpanRemoved(CacheSpan span) {
        ArrayList<Cache.Listener> keyListeners = this.listeners.get(span.key);
        if (keyListeners != null) {
            for (int i = keyListeners.size() - 1; i >= 0; i--) {
                keyListeners.get(i).onSpanRemoved(this, span);
            }
        }
        this.evictor.onSpanRemoved(this, span);
    }

    private void notifySpanAdded(CacheSpan span) {
        ArrayList<Cache.Listener> keyListeners = this.listeners.get(span.key);
        if (keyListeners != null) {
            for (int i = keyListeners.size() - 1; i >= 0; i--) {
                keyListeners.get(i).onSpanAdded(this, span);
            }
        }
        this.evictor.onSpanAdded(this, span);
    }

    private void notifySpanTouched(CacheSpan oldSpan, CacheSpan newSpan) {
        ArrayList<Cache.Listener> keyListeners = this.listeners.get(oldSpan.key);
        if (keyListeners != null) {
            for (int i = keyListeners.size() - 1; i >= 0; i--) {
                keyListeners.get(i).onSpanTouched(this, oldSpan, newSpan);
            }
        }
        this.evictor.onSpanTouched(this, oldSpan, newSpan);
    }

    @Override // com.google.android.exoplayer.upstream.cache.Cache
    public synchronized boolean isCached(String key, long position, long length) {
        boolean z;
        TreeSet<CacheSpan> entries = this.cachedSpans.get(key);
        if (entries == null) {
            z = false;
        } else {
            CacheSpan lookupSpan = CacheSpan.createLookup(key, position);
            CacheSpan floorSpan = entries.floor(lookupSpan);
            if (floorSpan == null || floorSpan.position + floorSpan.length <= position) {
                z = false;
            } else {
                long queryEndPosition = position + length;
                long currentEndPosition = floorSpan.position + floorSpan.length;
                if (currentEndPosition >= queryEndPosition) {
                    z = true;
                } else {
                    for (CacheSpan next : entries.tailSet(floorSpan, false)) {
                        if (next.position > currentEndPosition) {
                            z = false;
                        } else {
                            currentEndPosition = Math.max(currentEndPosition, next.position + next.length);
                            if (currentEndPosition >= queryEndPosition) {
                                z = true;
                            }
                        }
                    }
                    z = false;
                }
            }
        }
        return z;
    }
}
