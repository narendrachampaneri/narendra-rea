package com.newrelic.agent.android.instrumentation.io;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class CountingOutputStream extends OutputStream implements StreamCompleteListenerSource {
    private final OutputStream impl;
    private long count = 0;
    private final StreamCompleteListenerManager listenerManager = new StreamCompleteListenerManager();

    public CountingOutputStream(OutputStream impl) {
        this.impl = impl;
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.addStreamCompleteListener(streamCompleteListener);
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.removeStreamCompleteListener(streamCompleteListener);
    }

    public long getCount() {
        return this.count;
    }

    @Override // java.io.OutputStream
    public void write(int oneByte) throws IOException {
        try {
            this.impl.write(oneByte);
            this.count++;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] buffer) throws IOException {
        try {
            this.impl.write(buffer);
            this.count += (long) buffer.length;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] buffer, int offset, int count) throws IOException {
        try {
            this.impl.write(buffer, offset, count);
            this.count += (long) count;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.impl.flush();
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.impl.close();
            notifyStreamComplete();
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    private void notifyStreamComplete() {
        if (!this.listenerManager.isComplete()) {
            this.listenerManager.notifyStreamComplete(new StreamCompleteEvent(this, this.count));
        }
    }

    private void notifyStreamError(Exception e) {
        if (!this.listenerManager.isComplete()) {
            this.listenerManager.notifyStreamError(new StreamCompleteEvent(this, this.count, e));
        }
    }
}
