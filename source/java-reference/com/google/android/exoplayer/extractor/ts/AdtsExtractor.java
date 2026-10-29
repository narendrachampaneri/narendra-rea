package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class AdtsExtractor implements Extractor {
    private static final int MAX_PACKET_SIZE = 200;
    private AdtsReader adtsReader;
    private boolean firstPacket;
    private final long firstSampleTimestampUs;
    private final ParsableByteArray packetBuffer;

    public AdtsExtractor() {
        this(0L);
    }

    public AdtsExtractor(long firstSampleTimestampUs) {
        this.firstSampleTimestampUs = firstSampleTimestampUs;
        this.packetBuffer = new ParsableByteArray(200);
        this.firstPacket = true;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws InterruptedException, IOException {
        int value;
        ParsableByteArray scratch = new ParsableByteArray(10);
        input.peekFully(scratch.data, 0, 10);
        int value2 = scratch.readUnsignedInt24();
        if (value2 != Util.getIntegerCodeForString("ID3")) {
            value = value2 >> 8;
        } else {
            int length = ((scratch.data[6] & 127) << 21) | ((scratch.data[7] & 127) << 14) | ((scratch.data[8] & 127) << 7) | (scratch.data[9] & 127);
            input.advancePeekPosition(length);
            input.peekFully(scratch.data, 0, 2);
            scratch.setPosition(0);
            value = scratch.readUnsignedShort();
        }
        return (65526 & value) == 65520;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.adtsReader = new AdtsReader(output.track(0));
        output.endTracks();
        output.seekMap(SeekMap.UNSEEKABLE);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.firstPacket = true;
        this.adtsReader.seek();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws InterruptedException, IOException {
        int bytesRead = input.read(this.packetBuffer.data, 0, 200);
        if (bytesRead == -1) {
            return -1;
        }
        this.packetBuffer.setPosition(0);
        this.packetBuffer.setLimit(bytesRead);
        this.adtsReader.consume(this.packetBuffer, this.firstSampleTimestampUs, this.firstPacket);
        this.firstPacket = false;
        return 0;
    }
}
