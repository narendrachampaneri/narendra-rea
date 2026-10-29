package com.newrelic.agent.android.instrumentation.io;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class CountingInputStream extends InputStream implements StreamCompleteListenerSource {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final ByteBuffer buffer;
    private long count;
    private boolean enableBuffering;
    private final InputStream impl;
    private final StreamCompleteListenerManager listenerManager;

    public CountingInputStream(InputStream impl) {
        this.count = 0L;
        this.listenerManager = new StreamCompleteListenerManager();
        this.enableBuffering = false;
        this.impl = impl;
        if (this.enableBuffering) {
            this.buffer = ByteBuffer.allocate(Agent.getResponseBodyLimit());
            fillBuffer();
        } else {
            this.buffer = null;
        }
    }

    public CountingInputStream(InputStream impl, boolean enableBuffering) {
        this.count = 0L;
        this.listenerManager = new StreamCompleteListenerManager();
        this.enableBuffering = false;
        this.impl = impl;
        this.enableBuffering = enableBuffering;
        if (enableBuffering) {
            this.buffer = ByteBuffer.allocate(Agent.getResponseBodyLimit());
            fillBuffer();
        } else {
            this.buffer = null;
        }
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void addStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.addStreamCompleteListener(streamCompleteListener);
    }

    @Override // com.newrelic.agent.android.instrumentation.io.StreamCompleteListenerSource
    public void removeStreamCompleteListener(StreamCompleteListener streamCompleteListener) {
        this.listenerManager.removeStreamCompleteListener(streamCompleteListener);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(1L)) {
                    int n = readBuffer();
                    if (n >= 0) {
                        this.count++;
                    }
                    return n;
                }
            }
        }
        try {
            int n2 = this.impl.read();
            if (n2 >= 0) {
                this.count++;
            } else {
                notifyStreamComplete();
            }
            return n2;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] b) throws IOException {
        int i;
        int numBytesFromBuffer = 0;
        int inputBufferRemaining = b.length;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(inputBufferRemaining)) {
                    int n = readBufferBytes(b);
                    if (n >= 0) {
                        this.count += (long) n;
                        return n;
                    }
                    throw new IOException("readBufferBytes failed");
                }
                int remaining = this.buffer.remaining();
                if (remaining > 0) {
                    numBytesFromBuffer = readBufferBytes(b, 0, remaining);
                    if (numBytesFromBuffer < 0) {
                        throw new IOException("partial read from buffer failed");
                    }
                    inputBufferRemaining -= numBytesFromBuffer;
                    this.count += (long) numBytesFromBuffer;
                }
            }
        }
        try {
            int n2 = this.impl.read(b, numBytesFromBuffer, inputBufferRemaining);
            if (n2 >= 0) {
                this.count += (long) n2;
                i = n2 + numBytesFromBuffer;
            } else if (numBytesFromBuffer <= 0) {
                notifyStreamComplete();
                i = n2;
            } else {
                i = numBytesFromBuffer;
            }
            return i;
        } catch (IOException e) {
            log.error(e.toString());
            System.out.println("NOTIFY STREAM ERROR: " + e);
            e.printStackTrace();
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        int i;
        int numBytesFromBuffer = 0;
        int inputBufferRemaining = len;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(inputBufferRemaining)) {
                    int n = readBufferBytes(b, off, len);
                    if (n >= 0) {
                        this.count += (long) n;
                        return n;
                    }
                    throw new IOException("readBufferBytes failed");
                }
                int remaining = this.buffer.remaining();
                if (remaining > 0) {
                    numBytesFromBuffer = readBufferBytes(b, off, remaining);
                    if (numBytesFromBuffer < 0) {
                        throw new IOException("partial read from buffer failed");
                    }
                    inputBufferRemaining -= numBytesFromBuffer;
                    this.count += (long) numBytesFromBuffer;
                }
            }
        }
        try {
            int n2 = this.impl.read(b, off + numBytesFromBuffer, inputBufferRemaining);
            if (n2 >= 0) {
                this.count += (long) n2;
                i = n2 + numBytesFromBuffer;
            } else if (numBytesFromBuffer <= 0) {
                notifyStreamComplete();
                i = n2;
            } else {
                i = numBytesFromBuffer;
            }
            return i;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public long skip(long byteCount) throws IOException {
        long toSkip = byteCount;
        if (this.enableBuffering) {
            synchronized (this.buffer) {
                if (bufferHasBytes(byteCount)) {
                    this.buffer.position((int) byteCount);
                    this.count += byteCount;
                    return byteCount;
                }
                toSkip = byteCount - ((long) this.buffer.remaining());
                if (toSkip > 0) {
                    this.buffer.position(this.buffer.remaining());
                } else {
                    throw new IOException("partial read from buffer (skip) failed");
                }
            }
        }
        try {
            long n = this.impl.skip(toSkip);
            this.count += n;
            return n;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int remaining = 0;
        if (this.enableBuffering) {
            remaining = this.buffer.remaining();
        }
        try {
            return this.impl.available() + remaining;
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.impl.close();
            notifyStreamComplete();
        } catch (IOException e) {
            notifyStreamError(e);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void mark(int readlimit) {
        if (markSupported()) {
            this.impl.mark(readlimit);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.impl.markSupported();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        if (markSupported()) {
            try {
                this.impl.reset();
            } catch (IOException e) {
                notifyStreamError(e);
                throw e;
            }
        }
    }

    private int readBuffer() {
        if (bufferEmpty()) {
            return -1;
        }
        return this.buffer.get();
    }

    private int readBufferBytes(byte[] bytes) {
        return readBufferBytes(bytes, 0, bytes.length);
    }

    private int readBufferBytes(byte[] bytes, int offset, int length) {
        if (bufferEmpty()) {
            return -1;
        }
        int remainingBefore = this.buffer.remaining();
        this.buffer.get(bytes, offset, length);
        return remainingBefore - this.buffer.remaining();
    }

    private boolean bufferHasBytes(long num) {
        return ((long) this.buffer.remaining()) >= num;
    }

    private boolean bufferEmpty() {
        return !this.buffer.hasRemaining();
    }

    public void fillBuffer() {
        if (this.buffer != null && this.buffer.hasArray()) {
            synchronized (this.buffer) {
                int bytesRead = 0;
                try {
                    bytesRead = this.impl.read(this.buffer.array(), 0, this.buffer.capacity());
                } catch (IOException e) {
                    log.error(e.toString());
                }
                if (bytesRead <= 0) {
                    this.buffer.limit(0);
                } else if (bytesRead < this.buffer.capacity()) {
                    this.buffer.limit(bytesRead);
                }
            }
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

    public void setBufferingEnabled(boolean enableBuffering) {
        this.enableBuffering = enableBuffering;
    }

    public String getBufferAsString() {
        String str;
        if (this.buffer != null) {
            synchronized (this.buffer) {
                byte[] buf = new byte[this.buffer.limit()];
                for (int i = 0; i < this.buffer.limit(); i++) {
                    buf[i] = this.buffer.get(i);
                }
                str = new String(buf);
            }
            return str;
        }
        return "";
    }
}
