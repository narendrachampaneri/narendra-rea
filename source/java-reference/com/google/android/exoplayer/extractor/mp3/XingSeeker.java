package com.google.android.exoplayer.extractor.mp3;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
final class XingSeeker implements Mp3Extractor.Seeker {
    private final long durationUs;
    private final long firstFramePosition;
    private final long inputLength;
    private final long sizeBytes;
    private final long[] tableOfContents;

    public static XingSeeker create(MpegAudioHeader mpegAudioHeader, ParsableByteArray frame, long position, long inputLength) {
        int frameCount;
        int samplesPerFrame = mpegAudioHeader.samplesPerFrame;
        int sampleRate = mpegAudioHeader.sampleRate;
        long firstFramePosition = position + ((long) mpegAudioHeader.frameSize);
        int flags = frame.readInt();
        if ((flags & 7) != 7 || (frameCount = frame.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long durationUs = Util.scaleLargeTimestamp(frameCount, ((long) samplesPerFrame) * C.MICROS_PER_SECOND, sampleRate);
        long sizeBytes = frame.readUnsignedIntToInt();
        frame.skipBytes(1);
        long[] tableOfContents = new long[99];
        for (int i = 0; i < 99; i++) {
            tableOfContents[i] = frame.readUnsignedByte();
        }
        return new XingSeeker(tableOfContents, firstFramePosition, sizeBytes, durationUs, inputLength);
    }

    private XingSeeker(long[] tableOfContents, long firstFramePosition, long sizeBytes, long durationUs, long inputLength) {
        this.tableOfContents = tableOfContents;
        this.firstFramePosition = firstFramePosition;
        this.sizeBytes = sizeBytes;
        this.durationUs = durationUs;
        this.inputLength = inputLength;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public long getPosition(long timeUs) {
        float fa;
        float fb;
        float fx;
        float percent = (timeUs * 100.0f) / this.durationUs;
        if (percent <= 0.0f) {
            fx = 0.0f;
        } else if (percent >= 100.0f) {
            fx = 256.0f;
        } else {
            int a = (int) percent;
            if (a == 0) {
                fa = 0.0f;
            } else {
                fa = this.tableOfContents[a - 1];
            }
            if (a < 99) {
                fb = this.tableOfContents[a];
            } else {
                fb = 256.0f;
            }
            fx = fa + ((fb - fa) * (percent - a));
        }
        long position = ((long) (0.00390625f * fx * this.sizeBytes)) + this.firstFramePosition;
        return this.inputLength != -1 ? Math.min(position, this.inputLength - 1) : position;
    }

    @Override // com.google.android.exoplayer.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long position) {
        long offsetByte = (256 * (position - this.firstFramePosition)) / this.sizeBytes;
        int previousIndex = Util.binarySearchFloor(this.tableOfContents, offsetByte, true, false);
        long previousTime = getTimeUsForTocIndex(previousIndex);
        if (previousIndex != 98) {
            long previousByte = previousIndex == -1 ? 0L : this.tableOfContents[previousIndex];
            long nextByte = this.tableOfContents[previousIndex + 1];
            long nextTime = getTimeUsForTocIndex(previousIndex + 1);
            long timeOffset = ((nextTime - previousTime) * (offsetByte - previousByte)) / (nextByte - previousByte);
            return previousTime + timeOffset;
        }
        return previousTime;
    }

    @Override // com.google.android.exoplayer.extractor.mp3.Mp3Extractor.Seeker
    public long getDurationUs() {
        return this.durationUs;
    }

    private long getTimeUsForTocIndex(int tocIndex) {
        return (this.durationUs * ((long) (tocIndex + 1))) / 100;
    }
}
