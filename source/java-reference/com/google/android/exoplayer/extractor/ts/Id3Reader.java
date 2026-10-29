package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;

/* JADX INFO: loaded from: classes2.dex */
final class Id3Reader extends ElementaryStreamReader {
    private int sampleSize;
    private long sampleTimeUs;
    private boolean writingSample;

    public Id3Reader(TrackOutput output) {
        super(output);
        output.format(MediaFormat.createTextFormat(MimeTypes.APPLICATION_ID3));
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.writingSample = false;
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray data, long pesTimeUs, boolean startOfPacket) {
        if (startOfPacket) {
            this.writingSample = true;
            this.sampleTimeUs = pesTimeUs;
            this.sampleSize = 0;
        }
        if (this.writingSample) {
            this.sampleSize += data.bytesLeft();
            this.output.sampleData(data, data.bytesLeft());
        }
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
        this.output.sampleMetadata(this.sampleTimeUs, 1, this.sampleSize, 0, null);
        this.writingSample = false;
    }
}
