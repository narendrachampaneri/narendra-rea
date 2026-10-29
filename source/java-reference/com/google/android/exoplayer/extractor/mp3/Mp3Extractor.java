package com.google.android.exoplayer.extractor.mp3;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class Mp3Extractor implements Extractor {
    private static final int HEADER_MASK = -128000;
    private static final int MAX_SNIFF_BYTES = 4096;
    private static final int MAX_SYNC_BYTES = 131072;
    private long basisTimeUs;
    private ExtractorOutput extractorOutput;
    private int sampleBytesRemaining;
    private int samplesRead;
    private Seeker seeker;
    private int synchronizedHeaderData;
    private TrackOutput trackOutput;
    private static final int ID3_TAG = Util.getIntegerCodeForString("ID3");
    private static final int XING_HEADER = Util.getIntegerCodeForString("Xing");
    private static final int INFO_HEADER = Util.getIntegerCodeForString("Info");
    private static final int VBRI_HEADER = Util.getIntegerCodeForString("VBRI");
    private final BufferingInput inputBuffer = new BufferingInput(12288);
    private final ParsableByteArray scratch = new ParsableByteArray(4);
    private final MpegAudioHeader synchronizedHeader = new MpegAudioHeader();

    interface Seeker extends SeekMap {
        long getDurationUs();

        long getTimeUs(long j);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws InterruptedException, IOException {
        int frameSize;
        ParsableByteArray scratch = new ParsableByteArray(4);
        int startPosition = 0;
        input.peekFully(scratch.data, 0, 3);
        if (scratch.readUnsignedInt24() == ID3_TAG) {
            input.advancePeekPosition(3);
            input.peekFully(scratch.data, 0, 4);
            int headerLength = ((scratch.data[0] & 127) << 21) | ((scratch.data[1] & 127) << 14) | ((scratch.data[2] & 127) << 7) | (scratch.data[3] & 127);
            input.advancePeekPosition(headerLength);
            startPosition = headerLength + 10;
        } else {
            input.resetPeekPosition();
        }
        int headerPosition = startPosition;
        int validFrameCount = 0;
        int candidateSynchronizedHeaderData = 0;
        while (headerPosition - startPosition < 4096) {
            input.peekFully(scratch.data, 0, 4);
            scratch.setPosition(0);
            int headerData = scratch.readInt();
            if ((candidateSynchronizedHeaderData != 0 && (HEADER_MASK & headerData) != (HEADER_MASK & candidateSynchronizedHeaderData)) || (frameSize = MpegAudioHeader.getFrameSize(headerData)) == -1) {
                validFrameCount = 0;
                candidateSynchronizedHeaderData = 0;
                input.resetPeekPosition();
                headerPosition++;
                input.advancePeekPosition(headerPosition);
            } else {
                if (validFrameCount == 0) {
                    candidateSynchronizedHeaderData = headerData;
                }
                validFrameCount++;
                if (validFrameCount == 4) {
                    return true;
                }
                input.advancePeekPosition(frameSize - 4);
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.synchronizedHeaderData = 0;
        this.samplesRead = 0;
        this.basisTimeUs = -1L;
        this.sampleBytesRemaining = 0;
        this.inputBuffer.reset();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder seekPosition) throws InterruptedException, IOException {
        if (this.synchronizedHeaderData == 0 && synchronizeCatchingEndOfInput(extractorInput) == -1) {
            return -1;
        }
        return readSample(extractorInput);
    }

    private int readSample(ExtractorInput extractorInput) throws InterruptedException, IOException {
        if (this.sampleBytesRemaining == 0) {
            long headerPosition = maybeResynchronize(extractorInput);
            if (headerPosition == -1) {
                return -1;
            }
            if (this.basisTimeUs == -1) {
                this.basisTimeUs = this.seeker.getTimeUs(getPosition(extractorInput, this.inputBuffer));
            }
            this.sampleBytesRemaining = this.synchronizedHeader.frameSize;
        }
        long timeUs = this.basisTimeUs + ((((long) this.samplesRead) * C.MICROS_PER_SECOND) / ((long) this.synchronizedHeader.sampleRate));
        this.sampleBytesRemaining -= this.inputBuffer.drainToOutput(this.trackOutput, this.sampleBytesRemaining);
        if (this.sampleBytesRemaining > 0) {
            this.inputBuffer.mark();
            int bytesAppended = this.trackOutput.sampleData(extractorInput, this.sampleBytesRemaining, true);
            if (bytesAppended == -1) {
                return -1;
            }
            this.sampleBytesRemaining -= bytesAppended;
            if (this.sampleBytesRemaining > 0) {
                return 0;
            }
        }
        this.trackOutput.sampleMetadata(timeUs, 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private long maybeResynchronize(ExtractorInput extractorInput) throws InterruptedException, IOException {
        this.inputBuffer.mark();
        if (!this.inputBuffer.readAllowingEndOfInput(extractorInput, this.scratch.data, 0, 4)) {
            return -1L;
        }
        this.inputBuffer.returnToMark();
        this.scratch.setPosition(0);
        int sampleHeaderData = this.scratch.readInt();
        if ((sampleHeaderData & HEADER_MASK) == (this.synchronizedHeaderData & HEADER_MASK)) {
            int frameSize = MpegAudioHeader.getFrameSize(sampleHeaderData);
            if (frameSize != -1) {
                MpegAudioHeader.populateHeader(sampleHeaderData, this.synchronizedHeader);
                return 0L;
            }
        }
        this.synchronizedHeaderData = 0;
        this.inputBuffer.skip(extractorInput, 1);
        return synchronizeCatchingEndOfInput(extractorInput);
    }

    private long synchronizeCatchingEndOfInput(ExtractorInput extractorInput) throws InterruptedException, IOException {
        try {
            return synchronize(extractorInput);
        } catch (EOFException e) {
            return -1L;
        }
    }

    private long synchronize(ExtractorInput extractorInput) throws InterruptedException, IOException {
        int frameSize;
        if (extractorInput.getPosition() == 0) {
            this.inputBuffer.reset();
        } else {
            this.inputBuffer.returnToMark();
        }
        long startPosition = getPosition(extractorInput, this.inputBuffer);
        if (startPosition == 0) {
            this.inputBuffer.read(extractorInput, this.scratch.data, 0, 3);
            this.scratch.setPosition(0);
            if (this.scratch.readUnsignedInt24() == ID3_TAG) {
                extractorInput.skipFully(3);
                extractorInput.readFully(this.scratch.data, 0, 4);
                int headerLength = ((this.scratch.data[0] & 127) << 21) | ((this.scratch.data[1] & 127) << 14) | ((this.scratch.data[2] & 127) << 7) | (this.scratch.data[3] & 127);
                extractorInput.skipFully(headerLength);
                this.inputBuffer.reset();
                startPosition = getPosition(extractorInput, this.inputBuffer);
            } else {
                this.inputBuffer.returnToMark();
            }
        }
        this.inputBuffer.mark();
        long headerPosition = startPosition;
        int validFrameCount = 0;
        int candidateSynchronizedHeaderData = 0;
        while (headerPosition - startPosition < 131072) {
            if (!this.inputBuffer.readAllowingEndOfInput(extractorInput, this.scratch.data, 0, 4)) {
                return -1L;
            }
            this.scratch.setPosition(0);
            int headerData = this.scratch.readInt();
            if ((candidateSynchronizedHeaderData != 0 && (HEADER_MASK & headerData) != (HEADER_MASK & candidateSynchronizedHeaderData)) || (frameSize = MpegAudioHeader.getFrameSize(headerData)) == -1) {
                validFrameCount = 0;
                candidateSynchronizedHeaderData = 0;
                this.inputBuffer.returnToMark();
                this.inputBuffer.skip(extractorInput, 1);
                this.inputBuffer.mark();
                headerPosition++;
            } else {
                if (validFrameCount == 0) {
                    MpegAudioHeader.populateHeader(headerData, this.synchronizedHeader);
                    candidateSynchronizedHeaderData = headerData;
                }
                validFrameCount++;
                if (validFrameCount != 4) {
                    this.inputBuffer.skip(extractorInput, frameSize - 4);
                } else {
                    this.inputBuffer.returnToMark();
                    this.synchronizedHeaderData = candidateSynchronizedHeaderData;
                    if (this.seeker == null) {
                        setupSeeker(extractorInput, headerPosition);
                        this.extractorOutput.seekMap(this.seeker);
                        this.trackOutput.format(MediaFormat.createAudioFormat(this.synchronizedHeader.mimeType, 4096, this.seeker.getDurationUs(), this.synchronizedHeader.channels, this.synchronizedHeader.sampleRate, null));
                        return headerPosition;
                    }
                    return headerPosition;
                }
            }
        }
        throw new ParserException("Searched too many bytes while resynchronizing.");
    }

    private void setupSeeker(ExtractorInput extractorInput, long headerPosition) throws InterruptedException, IOException {
        if (parseSeekerFrame(extractorInput, headerPosition, extractorInput.getLength())) {
            this.inputBuffer.mark();
            if (this.seeker == null) {
                this.inputBuffer.read(extractorInput, this.scratch.data, 0, 4);
                this.scratch.setPosition(0);
                headerPosition += (long) this.synchronizedHeader.frameSize;
                MpegAudioHeader.populateHeader(this.scratch.readInt(), this.synchronizedHeader);
            } else {
                return;
            }
        }
        this.inputBuffer.returnToMark();
        this.seeker = new ConstantBitrateSeeker(headerPosition, this.synchronizedHeader.bitrate * 1000, extractorInput.getLength());
    }

    private boolean parseSeekerFrame(ExtractorInput extractorInput, long headerPosition, long inputLength) throws InterruptedException, IOException {
        int xingBase;
        this.inputBuffer.mark();
        this.seeker = null;
        ParsableByteArray frame = this.inputBuffer.getParsableByteArray(extractorInput, this.synchronizedHeader.frameSize);
        if ((this.synchronizedHeader.version & 1) == 1) {
            if (this.synchronizedHeader.channels != 1) {
                xingBase = 32;
            } else {
                xingBase = 17;
            }
        } else if (this.synchronizedHeader.channels != 1) {
            xingBase = 17;
        } else {
            xingBase = 9;
        }
        frame.setPosition(xingBase + 4);
        int headerData = frame.readInt();
        if (headerData == XING_HEADER || headerData == INFO_HEADER) {
            this.seeker = XingSeeker.create(this.synchronizedHeader, frame, headerPosition, inputLength);
            return true;
        }
        frame.setPosition(36);
        if (frame.readInt() == VBRI_HEADER) {
            this.seeker = VbriSeeker.create(this.synchronizedHeader, frame, headerPosition);
            return true;
        }
        return false;
    }

    private static long getPosition(ExtractorInput extractorInput, BufferingInput bufferingInput) {
        return extractorInput.getPosition() - ((long) bufferingInput.getAvailableByteCount());
    }
}
