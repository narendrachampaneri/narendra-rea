package com.google.android.exoplayer.extractor.ts;

import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class TsExtractor implements Extractor {
    private static final long MAX_PTS = 8589934591L;
    private static final String TAG = "TsExtractor";
    private static final int TS_PACKET_SIZE = 188;
    private static final int TS_PAT_PID = 0;
    private static final int TS_STREAM_TYPE_AAC = 15;
    private static final int TS_STREAM_TYPE_ATSC_AC3 = 129;
    private static final int TS_STREAM_TYPE_ATSC_E_AC3 = 135;
    private static final int TS_STREAM_TYPE_EIA608 = 256;
    private static final int TS_STREAM_TYPE_H264 = 27;
    private static final int TS_STREAM_TYPE_H265 = 36;
    private static final int TS_STREAM_TYPE_ID3 = 21;
    private static final int TS_STREAM_TYPE_MPA = 3;
    private static final int TS_STREAM_TYPE_MPA_LSF = 4;
    private static final int TS_SYNC_BYTE = 71;
    final SparseBooleanArray allowedPassthroughStreamTypes;
    private final long firstSampleTimestampUs;
    Id3Reader id3Reader;
    private final boolean idrKeyframesOnly;
    private long lastPts;
    private ExtractorOutput output;
    final SparseBooleanArray streamTypes;
    private long timestampOffsetUs;
    private final ParsableByteArray tsPacketBuffer;
    final SparseArray<TsPayloadReader> tsPayloadReaders;
    private final ParsableBitArray tsScratch;

    public TsExtractor() {
        this(0L);
    }

    public TsExtractor(long firstSampleTimestampUs) {
        this(firstSampleTimestampUs, null);
    }

    public TsExtractor(long firstSampleTimestampUs, AudioCapabilities audioCapabilities) {
        this(firstSampleTimestampUs, audioCapabilities, true);
    }

    public TsExtractor(long firstSampleTimestampUs, AudioCapabilities audioCapabilities, boolean idrKeyframesOnly) {
        this.firstSampleTimestampUs = firstSampleTimestampUs;
        this.idrKeyframesOnly = idrKeyframesOnly;
        this.tsScratch = new ParsableBitArray(new byte[3]);
        this.tsPacketBuffer = new ParsableByteArray(TS_PACKET_SIZE);
        this.streamTypes = new SparseBooleanArray();
        this.allowedPassthroughStreamTypes = getPassthroughStreamTypes(audioCapabilities);
        this.tsPayloadReaders = new SparseArray<>();
        this.tsPayloadReaders.put(0, new PatReader());
        this.lastPts = Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws InterruptedException, IOException {
        byte[] scratch = new byte[1];
        for (int i = 0; i < 5; i++) {
            input.peekFully(scratch, 0, 1);
            if ((scratch[0] & 255) != 71) {
                return false;
            }
            input.advancePeekPosition(187);
        }
        return true;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.output = output;
        output.seekMap(SeekMap.UNSEEKABLE);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.timestampOffsetUs = 0L;
        this.lastPts = Long.MIN_VALUE;
        for (int i = 0; i < this.tsPayloadReaders.size(); i++) {
            this.tsPayloadReaders.valueAt(i).seek();
        }
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws InterruptedException, IOException {
        TsPayloadReader payloadReader;
        if (!input.readFully(this.tsPacketBuffer.data, 0, TS_PACKET_SIZE, true)) {
            return -1;
        }
        this.tsPacketBuffer.setPosition(0);
        this.tsPacketBuffer.setLimit(TS_PACKET_SIZE);
        int syncByte = this.tsPacketBuffer.readUnsignedByte();
        if (syncByte != 71) {
            return 0;
        }
        this.tsPacketBuffer.readBytes(this.tsScratch, 3);
        this.tsScratch.skipBits(1);
        boolean payloadUnitStartIndicator = this.tsScratch.readBit();
        this.tsScratch.skipBits(1);
        int pid = this.tsScratch.readBits(13);
        this.tsScratch.skipBits(2);
        boolean adaptationFieldExists = this.tsScratch.readBit();
        boolean payloadExists = this.tsScratch.readBit();
        if (adaptationFieldExists) {
            int adaptationFieldLength = this.tsPacketBuffer.readUnsignedByte();
            this.tsPacketBuffer.skipBytes(adaptationFieldLength);
        }
        if (!payloadExists || (payloadReader = this.tsPayloadReaders.get(pid)) == null) {
            return 0;
        }
        payloadReader.consume(this.tsPacketBuffer, payloadUnitStartIndicator, this.output);
        return 0;
    }

    long ptsToTimeUs(long pts) {
        if (this.lastPts != Long.MIN_VALUE) {
            long closestWrapCount = (this.lastPts + 4294967295L) / MAX_PTS;
            long ptsWrapBelow = pts + (MAX_PTS * (closestWrapCount - 1));
            long ptsWrapAbove = pts + (MAX_PTS * closestWrapCount);
            pts = Math.abs(ptsWrapBelow - this.lastPts) < Math.abs(ptsWrapAbove - this.lastPts) ? ptsWrapBelow : ptsWrapAbove;
        }
        long timeUs = (C.MICROS_PER_SECOND * pts) / 90000;
        if (this.lastPts == Long.MIN_VALUE) {
            this.timestampOffsetUs = this.firstSampleTimestampUs - timeUs;
        }
        this.lastPts = pts;
        return this.timestampOffsetUs + timeUs;
    }

    private static SparseBooleanArray getPassthroughStreamTypes(AudioCapabilities audioCapabilities) {
        SparseBooleanArray streamTypes = new SparseBooleanArray();
        if (audioCapabilities != null) {
            if (audioCapabilities.supportsEncoding(5)) {
                streamTypes.put(TS_STREAM_TYPE_ATSC_AC3, true);
            }
            if (audioCapabilities.supportsEncoding(6)) {
            }
        }
        return streamTypes;
    }

    private static abstract class TsPayloadReader {
        public abstract void consume(ParsableByteArray parsableByteArray, boolean z, ExtractorOutput extractorOutput);

        public abstract void seek();

        private TsPayloadReader() {
        }
    }

    private class PatReader extends TsPayloadReader {
        private final ParsableBitArray patScratch;

        public PatReader() {
            super();
            this.patScratch = new ParsableBitArray(new byte[4]);
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void seek() {
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void consume(ParsableByteArray data, boolean payloadUnitStartIndicator, ExtractorOutput output) {
            if (payloadUnitStartIndicator) {
                int pointerField = data.readUnsignedByte();
                data.skipBytes(pointerField);
            }
            data.readBytes(this.patScratch, 3);
            this.patScratch.skipBits(12);
            int sectionLength = this.patScratch.readBits(12);
            data.skipBytes(5);
            int programCount = (sectionLength - 9) / 4;
            for (int i = 0; i < programCount; i++) {
                data.readBytes(this.patScratch, 4);
                this.patScratch.skipBits(19);
                int pid = this.patScratch.readBits(13);
                TsExtractor.this.tsPayloadReaders.put(pid, TsExtractor.this.new PmtReader());
            }
        }
    }

    private class PmtReader extends TsPayloadReader {
        private final ParsableBitArray pmtScratch;

        public PmtReader() {
            super();
            this.pmtScratch = new ParsableBitArray(new byte[5]);
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void seek() {
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0095 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:40:0x0053 A[SYNTHETIC] */
        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void consume(ParsableByteArray data, boolean payloadUnitStartIndicator, ExtractorOutput output) {
            if (payloadUnitStartIndicator) {
                int pointerField = data.readUnsignedByte();
                data.skipBytes(pointerField);
            }
            data.readBytes(this.pmtScratch, 3);
            this.pmtScratch.skipBits(12);
            int sectionLength = this.pmtScratch.readBits(12);
            data.skipBytes(7);
            data.readBytes(this.pmtScratch, 2);
            this.pmtScratch.skipBits(4);
            int programInfoLength = this.pmtScratch.readBits(12);
            data.skipBytes(programInfoLength);
            if (TsExtractor.this.id3Reader == null) {
                TsExtractor.this.id3Reader = new Id3Reader(output.track(21));
            }
            int entriesSize = ((sectionLength - 9) - programInfoLength) - 4;
            while (entriesSize > 0) {
                data.readBytes(this.pmtScratch, 5);
                int streamType = this.pmtScratch.readBits(8);
                this.pmtScratch.skipBits(3);
                int elementaryPid = this.pmtScratch.readBits(13);
                this.pmtScratch.skipBits(4);
                int esInfoLength = this.pmtScratch.readBits(12);
                data.skipBytes(esInfoLength);
                entriesSize -= esInfoLength + 5;
                if (!TsExtractor.this.streamTypes.get(streamType)) {
                    ElementaryStreamReader pesPayloadReader = null;
                    switch (streamType) {
                        case 3:
                            pesPayloadReader = new MpegAudioReader(output.track(3));
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                        case 4:
                            pesPayloadReader = new MpegAudioReader(output.track(4));
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                        case 15:
                            pesPayloadReader = new AdtsReader(output.track(15));
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                        case 21:
                            pesPayloadReader = TsExtractor.this.id3Reader;
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                        case 27:
                            pesPayloadReader = new H264Reader(output.track(27), new SeiReader(output.track(256)), TsExtractor.this.idrKeyframesOnly);
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                        case 36:
                            pesPayloadReader = new H265Reader(output.track(36), new SeiReader(output.track(256)));
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                        case TsExtractor.TS_STREAM_TYPE_ATSC_AC3 /* 129 */:
                        case TsExtractor.TS_STREAM_TYPE_ATSC_E_AC3 /* 135 */:
                            if (TsExtractor.this.allowedPassthroughStreamTypes.get(streamType)) {
                                pesPayloadReader = new Ac3Reader(output.track(streamType));
                                if (pesPayloadReader != null) {
                                    TsExtractor.this.streamTypes.put(streamType, true);
                                    TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                                }
                            }
                            break;
                        default:
                            if (pesPayloadReader != null) {
                                TsExtractor.this.streamTypes.put(streamType, true);
                                TsExtractor.this.tsPayloadReaders.put(elementaryPid, TsExtractor.this.new PesReader(pesPayloadReader));
                            }
                            break;
                    }
                }
            }
            output.endTracks();
        }
    }

    private class PesReader extends TsPayloadReader {
        private static final int HEADER_SIZE = 9;
        private static final int MAX_HEADER_EXTENSION_SIZE = 5;
        private static final int STATE_FINDING_HEADER = 0;
        private static final int STATE_READING_BODY = 3;
        private static final int STATE_READING_HEADER = 1;
        private static final int STATE_READING_HEADER_EXTENSION = 2;
        private boolean bodyStarted;
        private int bytesRead;
        private int extendedHeaderLength;
        private int payloadSize;
        private final ElementaryStreamReader pesPayloadReader;
        private final ParsableBitArray pesScratch;
        private boolean ptsFlag;
        private int state;
        private long timeUs;

        public PesReader(ElementaryStreamReader pesPayloadReader) {
            super();
            this.pesPayloadReader = pesPayloadReader;
            this.pesScratch = new ParsableBitArray(new byte[9]);
            this.state = 0;
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void seek() {
            this.state = 0;
            this.bytesRead = 0;
            this.bodyStarted = false;
            this.pesPayloadReader.seek();
        }

        @Override // com.google.android.exoplayer.extractor.ts.TsExtractor.TsPayloadReader
        public void consume(ParsableByteArray data, boolean payloadUnitStartIndicator, ExtractorOutput output) {
            if (payloadUnitStartIndicator) {
                switch (this.state) {
                    case 2:
                        Log.w(TsExtractor.TAG, "Unexpected start indicator reading extended header");
                        break;
                    case 3:
                        if (this.payloadSize != -1) {
                            Log.w(TsExtractor.TAG, "Unexpected start indicator: expected " + this.payloadSize + " more bytes");
                        }
                        if (this.bodyStarted) {
                            this.pesPayloadReader.packetFinished();
                        }
                        break;
                }
                setState(1);
            }
            while (data.bytesLeft() > 0) {
                switch (this.state) {
                    case 0:
                        data.skipBytes(data.bytesLeft());
                        break;
                    case 1:
                        if (continueRead(data, this.pesScratch.data, 9)) {
                            setState(parseHeader() ? 2 : 0);
                        }
                        break;
                    case 2:
                        if (continueRead(data, this.pesScratch.data, Math.min(5, this.extendedHeaderLength)) && continueRead(data, null, this.extendedHeaderLength)) {
                            parseHeaderExtension();
                            this.bodyStarted = false;
                            setState(3);
                        }
                        break;
                    case 3:
                        int readLength = data.bytesLeft();
                        int padding = this.payloadSize == -1 ? 0 : readLength - this.payloadSize;
                        if (padding > 0) {
                            readLength -= padding;
                            data.setLimit(data.getPosition() + readLength);
                        }
                        this.pesPayloadReader.consume(data, this.timeUs, !this.bodyStarted);
                        this.bodyStarted = true;
                        if (this.payloadSize != -1) {
                            this.payloadSize -= readLength;
                            if (this.payloadSize == 0) {
                                this.pesPayloadReader.packetFinished();
                                setState(1);
                            }
                        }
                        break;
                }
            }
        }

        private void setState(int state) {
            this.state = state;
            this.bytesRead = 0;
        }

        private boolean continueRead(ParsableByteArray source, byte[] target, int targetLength) {
            int bytesToRead = Math.min(source.bytesLeft(), targetLength - this.bytesRead);
            if (bytesToRead <= 0) {
                return true;
            }
            if (target == null) {
                source.skipBytes(bytesToRead);
            } else {
                source.readBytes(target, this.bytesRead, bytesToRead);
            }
            this.bytesRead += bytesToRead;
            return this.bytesRead == targetLength;
        }

        private boolean parseHeader() {
            this.pesScratch.setPosition(0);
            int startCodePrefix = this.pesScratch.readBits(24);
            if (startCodePrefix != 1) {
                Log.w(TsExtractor.TAG, "Unexpected start code prefix: " + startCodePrefix);
                this.payloadSize = -1;
                return false;
            }
            this.pesScratch.skipBits(8);
            int packetLength = this.pesScratch.readBits(16);
            this.pesScratch.skipBits(8);
            this.ptsFlag = this.pesScratch.readBit();
            this.pesScratch.skipBits(7);
            this.extendedHeaderLength = this.pesScratch.readBits(8);
            if (packetLength == 0) {
                this.payloadSize = -1;
            } else {
                this.payloadSize = ((packetLength + 6) - 9) - this.extendedHeaderLength;
            }
            return true;
        }

        private void parseHeaderExtension() {
            this.pesScratch.setPosition(0);
            this.timeUs = 0L;
            if (this.ptsFlag) {
                this.pesScratch.skipBits(4);
                long pts = ((long) this.pesScratch.readBits(3)) << 30;
                this.pesScratch.skipBits(1);
                long pts2 = pts | ((long) (this.pesScratch.readBits(15) << 15));
                this.pesScratch.skipBits(1);
                long pts3 = pts2 | ((long) this.pesScratch.readBits(15));
                this.pesScratch.skipBits(1);
                this.timeUs = TsExtractor.this.ptsToTimeUs(pts3);
            }
        }
    }
}
