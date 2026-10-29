package com.google.android.exoplayer.extractor.mp3;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
final class VbriSeeker implements Mp3Extractor.Seeker {
    private final long basePosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    public static VbriSeeker create(MpegAudioHeader mpegAudioHeader, ParsableByteArray frame, long position) {
        int numBytes;
        frame.skipBytes(10);
        int numFrames = frame.readInt();
        if (numFrames <= 0) {
            return null;
        }
        int sampleRate = mpegAudioHeader.sampleRate;
        long durationUs = Util.scaleLargeTimestamp(numFrames, C.MICROS_PER_SECOND * ((long) (sampleRate >= 32000 ? 1152 : 576)), sampleRate);
        int numEntries = frame.readUnsignedShort();
        int scale = frame.readUnsignedShort();
        int entrySize = frame.readUnsignedShort();
        long[] timesUs = new long[numEntries];
        long[] offsets = new long[numEntries];
        long segmentDurationUs = durationUs / ((long) numEntries);
        long now = 0;
        for (int segmentIndex = 0; segmentIndex < numEntries; segmentIndex++) {
            switch (entrySize) {
                case 1:
                    numBytes = frame.readUnsignedByte();
                    break;
                case 2:
                    numBytes = frame.readUnsignedShort();
                    break;
                case 3:
                    numBytes = frame.readUnsignedInt24();
                    break;
                case 4:
                    numBytes = frame.readUnsignedIntToInt();
                    break;
                default:
                    return null;
            }
            now += segmentDurationUs;
            timesUs[segmentIndex] = now;
            position += (long) (numBytes * scale);
            offsets[segmentIndex] = position;
        }
        return new VbriSeeker(timesUs, offsets, ((long) mpegAudioHeader.frameSize) + position, durationUs);
    }

    private VbriSeeker(long[] timesUs, long[] positions, long basePosition, long durationUs) {
        this.timesUs = timesUs;
        this.positions = positions;
        this.basePosition = basePosition;
        this.durationUs = durationUs;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer.extractor.SeekMap
    public long getPosition(long timeUs) {
        int index = Util.binarySearchFloor(this.timesUs, timeUs, false, false);
        return (index == -1 ? 0L : this.positions[index]) + this.basePosition;
    }

    @Override // com.google.android.exoplayer.extractor.mp3.Mp3Extractor.Seeker
    public long getTimeUs(long position) {
        return this.timesUs[Util.binarySearchFloor(this.positions, position, true, true)];
    }

    @Override // com.google.android.exoplayer.extractor.mp3.Mp3Extractor.Seeker
    public long getDurationUs() {
        return this.durationUs;
    }
}
