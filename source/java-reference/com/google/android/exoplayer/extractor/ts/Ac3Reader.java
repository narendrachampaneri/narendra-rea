package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.Ac3Util;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;

/* JADX INFO: loaded from: classes2.dex */
final class Ac3Reader extends ElementaryStreamReader {
    private static final int HEADER_SIZE = 8;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bitrate;
    private int bytesRead;
    private long frameDurationUs;
    private final ParsableBitArray headerScratchBits;
    private final ParsableByteArray headerScratchBytes;
    private boolean lastByteWas0B;
    private MediaFormat mediaFormat;
    private int sampleSize;
    private int state;
    private long timeUs;

    public Ac3Reader(TrackOutput output) {
        super(output);
        this.headerScratchBits = new ParsableBitArray(new byte[8]);
        this.headerScratchBytes = new ParsableByteArray(this.headerScratchBits.data);
        this.state = 0;
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWas0B = false;
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
                        this.state = 1;
                        this.headerScratchBytes.data[0] = 11;
                        this.headerScratchBytes.data[1] = 119;
                        this.bytesRead = 2;
                    }
                    break;
                case 1:
                    if (continueRead(data, this.headerScratchBytes.data, 8)) {
                        parseHeader();
                        this.headerScratchBytes.setPosition(0);
                        this.output.sampleData(this.headerScratchBytes, 8);
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
        while (pesBuffer.bytesLeft() > 0) {
            if (!this.lastByteWas0B) {
                this.lastByteWas0B = pesBuffer.readUnsignedByte() == 11;
            } else {
                int secondByte = pesBuffer.readUnsignedByte();
                if (secondByte == 119) {
                    this.lastByteWas0B = false;
                    return true;
                }
                this.lastByteWas0B = secondByte == 11;
            }
        }
        return false;
    }

    private void parseHeader() {
        this.headerScratchBits.setPosition(0);
        this.sampleSize = Ac3Util.parseFrameSize(this.headerScratchBits);
        if (this.mediaFormat == null) {
            this.headerScratchBits.setPosition(0);
            this.mediaFormat = Ac3Util.parseFrameAc3Format(this.headerScratchBits);
            this.output.format(this.mediaFormat);
            this.bitrate = Ac3Util.getBitrate(this.sampleSize, this.mediaFormat.sampleRate);
        }
        this.frameDurationUs = (int) ((8000 * ((long) this.sampleSize)) / ((long) this.bitrate));
    }
}
