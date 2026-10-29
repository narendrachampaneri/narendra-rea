package com.google.android.exoplayer.extractor.webm;

import com.google.android.exoplayer.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class VarintReader {
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_READ_CONTENTS = 1;
    private static final int[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private final byte[] scratch = new byte[8];
    private int state;

    public void reset() {
        this.state = 0;
        this.length = 0;
    }

    public long readUnsignedVarint(ExtractorInput input, boolean allowEndOfInput, boolean removeLengthMask) throws InterruptedException, IOException {
        if (this.state == 0) {
            if (!input.readFully(this.scratch, 0, 1, allowEndOfInput)) {
                return -1L;
            }
            int firstByte = this.scratch[0] & 255;
            this.length = -1;
            for (int i = 0; i < VARINT_LENGTH_MASKS.length; i++) {
                if ((VARINT_LENGTH_MASKS[i] & firstByte) != 0) {
                    this.length = i + 1;
                    break;
                }
            }
            if (this.length == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        input.readFully(this.scratch, 1, this.length - 1);
        if (removeLengthMask) {
            byte[] bArr = this.scratch;
            bArr[0] = (byte) (bArr[0] & (VARINT_LENGTH_MASKS[this.length - 1] ^ (-1)));
        }
        long varint = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            varint = (varint << 8) | ((long) (this.scratch[i2] & 255));
        }
        this.state = 0;
        return varint;
    }

    public int getLastLength() {
        return this.length;
    }
}
