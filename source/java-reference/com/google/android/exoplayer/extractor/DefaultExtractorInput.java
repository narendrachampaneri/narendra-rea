package com.google.android.exoplayer.extractor;

import com.google.android.exoplayer.upstream.DataSource;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultExtractorInput implements ExtractorInput {
    private static final byte[] SCRATCH_SPACE = new byte[4096];
    private final DataSource dataSource;
    private byte[] peekBuffer = new byte[8192];
    private int peekBufferLength;
    private int peekBufferPosition;
    private long position;
    private final long streamLength;

    public DefaultExtractorInput(DataSource dataSource, long position, long length) {
        this.dataSource = dataSource;
        this.position = position;
        this.streamLength = length;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public int read(byte[] target, int offset, int length) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int peekBytes = Math.min(this.peekBufferLength, length);
        System.arraycopy(this.peekBuffer, 0, target, offset, peekBytes);
        int length2 = length - peekBytes;
        int bytesRead = length2 != 0 ? this.dataSource.read(target, offset + peekBytes, length2) : 0;
        if (bytesRead == -1) {
            return -1;
        }
        updatePeekBuffer(peekBytes);
        int bytesRead2 = bytesRead + peekBytes;
        this.position += (long) bytesRead2;
        return bytesRead2;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public boolean readFully(byte[] target, int offset, int length, boolean allowEndOfInput) throws InterruptedException, IOException {
        int peekBytes = Math.min(this.peekBufferLength, length);
        System.arraycopy(this.peekBuffer, 0, target, offset, peekBytes);
        int offset2 = offset + peekBytes;
        int remaining = length - peekBytes;
        while (remaining > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int bytesRead = this.dataSource.read(target, offset2, remaining);
            if (bytesRead == -1) {
                if (allowEndOfInput && remaining == length) {
                    return false;
                }
                throw new EOFException();
            }
            offset2 += bytesRead;
            remaining -= bytesRead;
        }
        updatePeekBuffer(peekBytes);
        this.position += (long) length;
        return true;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public void readFully(byte[] target, int offset, int length) throws InterruptedException, IOException {
        readFully(target, offset, length, false);
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public void skipFully(int length) throws InterruptedException, IOException {
        int peekBytes = Math.min(this.peekBufferLength, length);
        int remaining = length - peekBytes;
        while (remaining > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int bytesRead = this.dataSource.read(SCRATCH_SPACE, 0, Math.min(SCRATCH_SPACE.length, remaining));
            if (bytesRead == -1) {
                throw new EOFException();
            }
            remaining -= bytesRead;
        }
        updatePeekBuffer(peekBytes);
        this.position += (long) length;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public void peekFully(byte[] target, int offset, int length) throws InterruptedException, IOException {
        ensureSpaceForPeek(length);
        int peekBytes = Math.min(this.peekBufferLength - this.peekBufferPosition, length);
        System.arraycopy(this.peekBuffer, this.peekBufferPosition, target, offset, peekBytes);
        int offset2 = offset + peekBytes;
        int fillBytes = length - peekBytes;
        int remaining = fillBytes;
        int writePosition = this.peekBufferLength;
        while (remaining > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int bytesRead = this.dataSource.read(this.peekBuffer, writePosition, remaining);
            if (bytesRead == -1) {
                throw new EOFException();
            }
            System.arraycopy(this.peekBuffer, writePosition, target, offset2, bytesRead);
            remaining -= bytesRead;
            writePosition += bytesRead;
            offset2 += bytesRead;
        }
        this.peekBufferPosition += length;
        this.peekBufferLength += fillBytes;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public void advancePeekPosition(int length) throws InterruptedException, IOException {
        ensureSpaceForPeek(length);
        int peekBytes = Math.min(this.peekBufferLength - this.peekBufferPosition, length);
        int fillBytes = length - peekBytes;
        int remaining = fillBytes;
        int writePosition = this.peekBufferLength;
        while (remaining > 0) {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            int bytesRead = this.dataSource.read(this.peekBuffer, writePosition, remaining);
            if (bytesRead == -1) {
                throw new EOFException();
            }
            remaining -= bytesRead;
            writePosition += bytesRead;
        }
        this.peekBufferPosition += length;
        this.peekBufferLength += fillBytes;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.peekBufferPosition = 0;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // com.google.android.exoplayer.extractor.ExtractorInput
    public long getLength() {
        return this.streamLength;
    }

    private void ensureSpaceForPeek(int length) {
        int requiredLength = this.peekBufferPosition + length;
        if (requiredLength > this.peekBuffer.length) {
            this.peekBuffer = Arrays.copyOf(this.peekBuffer, Math.max(this.peekBuffer.length * 2, requiredLength));
        }
    }

    private void updatePeekBuffer(int bytesConsumed) {
        this.peekBufferLength -= bytesConsumed;
        this.peekBufferPosition = 0;
        System.arraycopy(this.peekBuffer, bytesConsumed, this.peekBuffer, 0, this.peekBufferLength);
    }
}
