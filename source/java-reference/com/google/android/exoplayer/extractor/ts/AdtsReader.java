package com.google.android.exoplayer.extractor.ts;

import android.util.Pair;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
final class AdtsReader extends ElementaryStreamReader {
    private static final int CRC_SIZE = 2;
    private static final int HEADER_SIZE = 5;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private final ParsableBitArray adtsScratch;
    private int bytesRead;
    private long frameDurationUs;
    private boolean hasCrc;
    private boolean hasOutputFormat;
    private boolean lastByteWasFF;
    private int sampleSize;
    private int state;
    private long timeUs;

    public AdtsReader(TrackOutput output) {
        super(output);
        this.adtsScratch = new ParsableBitArray(new byte[7]);
        this.state = 0;
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWasFF = false;
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray data, long pesTimeUs, boolean startOfPacket) {
        if (startOfPacket) {
            this.timeUs = pesTimeUs;
        }
        while (data.bytesLeft() > 0) {
            switch (this.state) {
                case 0:
                    if (skipToNextSync(data)) {
                        this.bytesRead = 0;
                        this.state = 1;
                    }
                    break;
                case 1:
                    int targetLength = this.hasCrc ? 7 : 5;
                    if (continueRead(data, this.adtsScratch.data, targetLength)) {
                        parseHeader();
                        this.bytesRead = 0;
                        this.state = 2;
                    }
                    break;
                case 2:
                    int bytesToRead = Math.min(data.bytesLeft(), this.sampleSize - this.bytesRead);
                    this.output.sampleData(data, bytesToRead);
                    this.bytesRead += bytesToRead;
                    if (this.bytesRead == this.sampleSize) {
                        this.output.sampleMetadata(this.timeUs, 1, this.sampleSize, 0, null);
                        this.timeUs += this.frameDurationUs;
                        this.bytesRead = 0;
                        this.state = 0;
                    }
                    break;
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private boolean continueRead(ParsableByteArray source, byte[] target, int targetLength) {
        int bytesToRead = Math.min(source.bytesLeft(), targetLength - this.bytesRead);
        source.readBytes(target, this.bytesRead, bytesToRead);
        this.bytesRead += bytesToRead;
        return this.bytesRead == targetLength;
    }

    private boolean skipToNextSync(ParsableByteArray pesBuffer) {
        byte[] adtsData = pesBuffer.data;
        int startOffset = pesBuffer.getPosition();
        int endOffset = pesBuffer.limit();
        for (int i = startOffset; i < endOffset; i++) {
            boolean byteIsFF = (adtsData[i] & 255) == 255;
            boolean found = this.lastByteWasFF && !byteIsFF && (adtsData[i] & 240) == 240;
            this.lastByteWasFF = byteIsFF;
            if (found) {
                this.hasCrc = (adtsData[i] & 1) == 0;
                pesBuffer.setPosition(i + 1);
                this.lastByteWasFF = false;
                return true;
            }
        }
        pesBuffer.setPosition(endOffset);
        return false;
    }

    private void parseHeader() {
        this.adtsScratch.setPosition(0);
        if (!this.hasOutputFormat) {
            int audioObjectType = this.adtsScratch.readBits(2) + 1;
            int sampleRateIndex = this.adtsScratch.readBits(4);
            this.adtsScratch.skipBits(1);
            int channelConfig = this.adtsScratch.readBits(3);
            byte[] audioSpecificConfig = CodecSpecificDataUtil.buildAacAudioSpecificConfig(audioObjectType, sampleRateIndex, channelConfig);
            Pair<Integer, Integer> audioParams = CodecSpecificDataUtil.parseAacAudioSpecificConfig(audioSpecificConfig);
            MediaFormat mediaFormat = MediaFormat.createAudioFormat(MimeTypes.AUDIO_AAC, -1, ((Integer) audioParams.second).intValue(), ((Integer) audioParams.first).intValue(), Collections.singletonList(audioSpecificConfig));
            this.frameDurationUs = 1024000000 / ((long) mediaFormat.sampleRate);
            this.output.format(mediaFormat);
            this.hasOutputFormat = true;
        } else {
            this.adtsScratch.skipBits(10);
        }
        this.adtsScratch.skipBits(4);
        this.sampleSize = (this.adtsScratch.readBits(13) - 2) - 5;
        if (this.hasCrc) {
            this.sampleSize -= 2;
        }
    }
}
