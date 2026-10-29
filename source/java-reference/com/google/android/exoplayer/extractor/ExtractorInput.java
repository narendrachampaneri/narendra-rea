package com.google.android.exoplayer.extractor;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface ExtractorInput {
    void advancePeekPosition(int i) throws InterruptedException, IOException;

    long getLength();

    long getPosition();

    void peekFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    int read(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException;

    boolean readFully(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException;

    void resetPeekPosition();

    void skipFully(int i) throws InterruptedException, IOException;
}
