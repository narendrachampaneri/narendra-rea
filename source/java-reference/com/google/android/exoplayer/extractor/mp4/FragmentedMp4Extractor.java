package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.ChunkIndex;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public final class FragmentedMp4Extractor implements Extractor {
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, ClosedCaptionCtrl.MISC_CHAN_1, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE_CONTINUE = 4;
    private static final int STATE_READING_SAMPLE_START = 3;
    public static final int WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private final Stack<Atom.ContainerAtom> containerAtoms;
    private final ParsableByteArray encryptionSignalByte;
    private final byte[] extendedTypeScratch;
    private DefaultSampleValues extendsDefaults;
    private ExtractorOutput extractorOutput;
    private final TrackFragment fragmentRun;
    private boolean haveOutputSeekMap;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleIndex;
    private int sampleSize;
    private Track track;
    private TrackOutput trackOutput;
    private final int workaroundFlags;

    public FragmentedMp4Extractor() {
        this(0);
    }

    public FragmentedMp4Extractor(int workaroundFlags) {
        this.workaroundFlags = workaroundFlags;
        this.atomHeader = new ParsableByteArray(16);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.encryptionSignalByte = new ParsableByteArray(1);
        this.extendedTypeScratch = new byte[16];
        this.containerAtoms = new Stack<>();
        this.fragmentRun = new TrackFragment();
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput input) throws InterruptedException, IOException {
        return Sniffer.sniffFragmented(input);
    }

    public void setTrack(Track track) {
        this.extendsDefaults = new DefaultSampleValues(0, 0, 0, 0);
        this.track = track;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput output) {
        this.extractorOutput = output;
        this.trackOutput = output.track(0);
        this.extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.containerAtoms.clear();
        enterReadingAtomHeaderState();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput input, PositionHolder seekPosition) throws InterruptedException, IOException {
        while (true) {
            switch (this.parserState) {
                case 0:
                    if (!readAtomHeader(input)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    readAtomPayload(input);
                    break;
                case 2:
                    readEncryptionData(input);
                    break;
                default:
                    if (readSample(input)) {
                        return 0;
                    }
                    break;
            }
        }
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private boolean readAtomHeader(ExtractorInput input) throws InterruptedException, IOException {
        if (this.atomHeaderBytesRead == 0) {
            if (!input.readFully(this.atomHeader.data, 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        if (this.atomSize == 1) {
            input.readFully(this.atomHeader.data, 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        }
        if (this.atomType == Atom.TYPE_mdat) {
            if (!this.haveOutputSeekMap) {
                this.extractorOutput.seekMap(SeekMap.UNSEEKABLE);
                this.haveOutputSeekMap = true;
            }
            if (this.fragmentRun.sampleEncryptionDataNeedsFill) {
                this.parserState = 2;
                return true;
            }
            this.parserState = 3;
            return true;
        }
        if (shouldParseAtom(this.atomType)) {
            if (shouldParseContainerAtom(this.atomType)) {
                long endPosition = (input.getPosition() + this.atomSize) - 8;
                this.containerAtoms.add(new Atom.ContainerAtom(this.atomType, endPosition));
                enterReadingAtomHeaderState();
                return true;
            }
            Assertions.checkState(this.atomHeaderBytesRead == 8);
            Assertions.checkState(this.atomSize <= 2147483647L);
            this.atomData = new ParsableByteArray((int) this.atomSize);
            System.arraycopy(this.atomHeader.data, 0, this.atomData.data, 0, 8);
            this.parserState = 1;
            return true;
        }
        Assertions.checkState(this.atomSize <= 2147483647L);
        this.atomData = null;
        this.parserState = 1;
        return true;
    }

    private void readAtomPayload(ExtractorInput input) throws InterruptedException, IOException {
        int atomPayloadSize = ((int) this.atomSize) - this.atomHeaderBytesRead;
        if (this.atomData != null) {
            input.readFully(this.atomData.data, 8, atomPayloadSize);
            onLeafAtomRead(new Atom.LeafAtom(this.atomType, this.atomData), input.getPosition());
        } else {
            input.skipFully(atomPayloadSize);
        }
        long currentPosition = input.getPosition();
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == currentPosition) {
            onContainerAtomRead(this.containerAtoms.pop());
        }
        enterReadingAtomHeaderState();
    }

    private void onLeafAtomRead(Atom.LeafAtom leaf, long inputPosition) {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(leaf);
        } else if (leaf.type == Atom.TYPE_sidx) {
            ChunkIndex segmentIndex = parseSidx(leaf.data, inputPosition);
            this.extractorOutput.seekMap(segmentIndex);
            this.haveOutputSeekMap = true;
        }
    }

    private void onContainerAtomRead(Atom.ContainerAtom container) {
        if (container.type == Atom.TYPE_moov) {
            onMoovContainerAtomRead(container);
        } else if (container.type == Atom.TYPE_moof) {
            onMoofContainerAtomRead(container);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(container);
        }
    }

    private void onMoovContainerAtomRead(Atom.ContainerAtom moov) {
        List<Atom.LeafAtom> moovChildren = moov.leafChildren;
        int moovChildrenSize = moovChildren.size();
        DrmInitData.Mapped drmInitData = null;
        for (int i = 0; i < moovChildrenSize; i++) {
            Atom.LeafAtom child = moovChildren.get(i);
            if (child.type == Atom.TYPE_pssh) {
                if (drmInitData == null) {
                    drmInitData = new DrmInitData.Mapped(MimeTypes.VIDEO_MP4);
                }
                byte[] psshData = child.data.data;
                drmInitData.put(PsshAtomUtil.parseUuid(psshData), psshData);
            }
        }
        if (drmInitData != null) {
            this.extractorOutput.drmInitData(drmInitData);
        }
        Atom.ContainerAtom mvex = moov.getContainerAtomOfType(Atom.TYPE_mvex);
        this.extendsDefaults = parseTrex(mvex.getLeafAtomOfType(Atom.TYPE_trex).data);
        this.track = AtomParsers.parseTrak(moov.getContainerAtomOfType(Atom.TYPE_trak), moov.getLeafAtomOfType(Atom.TYPE_mvhd));
        Assertions.checkState(this.track != null);
        this.trackOutput.format(this.track.mediaFormat);
    }

    private void onMoofContainerAtomRead(Atom.ContainerAtom moof) {
        this.fragmentRun.reset();
        parseMoof(this.track, this.extendsDefaults, moof, this.fragmentRun, this.workaroundFlags, this.extendedTypeScratch);
        this.sampleIndex = 0;
    }

    private static DefaultSampleValues parseTrex(ParsableByteArray trex) {
        trex.setPosition(16);
        int defaultSampleDescriptionIndex = trex.readUnsignedIntToInt() - 1;
        int defaultSampleDuration = trex.readUnsignedIntToInt();
        int defaultSampleSize = trex.readUnsignedIntToInt();
        int defaultSampleFlags = trex.readInt();
        return new DefaultSampleValues(defaultSampleDescriptionIndex, defaultSampleDuration, defaultSampleSize, defaultSampleFlags);
    }

    private static void parseMoof(Track track, DefaultSampleValues extendsDefaults, Atom.ContainerAtom moof, TrackFragment out, int workaroundFlags, byte[] extendedTypeScratch) {
        parseTraf(track, extendsDefaults, moof.getContainerAtomOfType(Atom.TYPE_traf), out, workaroundFlags, extendedTypeScratch);
    }

    private static void parseTraf(Track track, DefaultSampleValues extendsDefaults, Atom.ContainerAtom traf, TrackFragment out, int workaroundFlags, byte[] extendedTypeScratch) {
        Atom.LeafAtom tfdtAtom = traf.getLeafAtomOfType(Atom.TYPE_tfdt);
        long decodeTime = tfdtAtom == null ? 0L : parseTfdt(traf.getLeafAtomOfType(Atom.TYPE_tfdt).data);
        Atom.LeafAtom tfhd = traf.getLeafAtomOfType(Atom.TYPE_tfhd);
        DefaultSampleValues fragmentHeader = parseTfhd(extendsDefaults, tfhd.data);
        out.sampleDescriptionIndex = fragmentHeader.sampleDescriptionIndex;
        Atom.LeafAtom trun = traf.getLeafAtomOfType(Atom.TYPE_trun);
        parseTrun(track, fragmentHeader, decodeTime, workaroundFlags, trun.data, out);
        Atom.LeafAtom saiz = traf.getLeafAtomOfType(Atom.TYPE_saiz);
        if (saiz != null) {
            TrackEncryptionBox trackEncryptionBox = track.sampleDescriptionEncryptionBoxes[fragmentHeader.sampleDescriptionIndex];
            parseSaiz(trackEncryptionBox, saiz.data, out);
        }
        Atom.LeafAtom senc = traf.getLeafAtomOfType(Atom.TYPE_senc);
        if (senc != null) {
            parseSenc(senc.data, out);
        }
        int childrenSize = traf.leafChildren.size();
        for (int i = 0; i < childrenSize; i++) {
            Atom.LeafAtom atom = traf.leafChildren.get(i);
            if (atom.type == Atom.TYPE_uuid) {
                parseUuid(atom.data, out, extendedTypeScratch);
            }
        }
    }

    private static void parseSaiz(TrackEncryptionBox encryptionBox, ParsableByteArray saiz, TrackFragment out) {
        int vectorSize = encryptionBox.initializationVectorSize;
        saiz.setPosition(8);
        int fullAtom = saiz.readInt();
        int flags = Atom.parseFullAtomFlags(fullAtom);
        if ((flags & 1) == 1) {
            saiz.skipBytes(8);
        }
        int defaultSampleInfoSize = saiz.readUnsignedByte();
        int sampleCount = saiz.readUnsignedIntToInt();
        if (sampleCount != out.length) {
            throw new IllegalStateException("Length mismatch: " + sampleCount + ", " + out.length);
        }
        int totalSize = 0;
        if (defaultSampleInfoSize == 0) {
            boolean[] sampleHasSubsampleEncryptionTable = out.sampleHasSubsampleEncryptionTable;
            for (int i = 0; i < sampleCount; i++) {
                int sampleInfoSize = saiz.readUnsignedByte();
                totalSize += sampleInfoSize;
                sampleHasSubsampleEncryptionTable[i] = sampleInfoSize > vectorSize;
            }
        } else {
            boolean subsampleEncryption = defaultSampleInfoSize > vectorSize;
            totalSize = 0 + (defaultSampleInfoSize * sampleCount);
            Arrays.fill(out.sampleHasSubsampleEncryptionTable, 0, sampleCount, subsampleEncryption);
        }
        out.initEncryptionData(totalSize);
    }

    private static DefaultSampleValues parseTfhd(DefaultSampleValues extendsDefaults, ParsableByteArray tfhd) {
        tfhd.setPosition(8);
        int fullAtom = tfhd.readInt();
        int flags = Atom.parseFullAtomFlags(fullAtom);
        tfhd.skipBytes(4);
        if ((flags & 1) != 0) {
            tfhd.skipBytes(8);
        }
        int defaultSampleDescriptionIndex = (flags & 2) != 0 ? tfhd.readUnsignedIntToInt() - 1 : extendsDefaults.sampleDescriptionIndex;
        int defaultSampleDuration = (flags & 8) != 0 ? tfhd.readUnsignedIntToInt() : extendsDefaults.duration;
        int defaultSampleSize = (flags & 16) != 0 ? tfhd.readUnsignedIntToInt() : extendsDefaults.size;
        int defaultSampleFlags = (flags & 32) != 0 ? tfhd.readUnsignedIntToInt() : extendsDefaults.flags;
        return new DefaultSampleValues(defaultSampleDescriptionIndex, defaultSampleDuration, defaultSampleSize, defaultSampleFlags);
    }

    private static long parseTfdt(ParsableByteArray tfdt) {
        tfdt.setPosition(8);
        int fullAtom = tfdt.readInt();
        int version = Atom.parseFullAtomVersion(fullAtom);
        return version == 1 ? tfdt.readUnsignedLongToLong() : tfdt.readUnsignedInt();
    }

    private static void parseTrun(Track track, DefaultSampleValues defaultSampleValues, long decodeTime, int workaroundFlags, ParsableByteArray trun, TrackFragment out) {
        int sampleFlags;
        trun.setPosition(8);
        int fullAtom = trun.readInt();
        int flags = Atom.parseFullAtomFlags(fullAtom);
        int sampleCount = trun.readUnsignedIntToInt();
        if ((flags & 1) != 0) {
            trun.skipBytes(4);
        }
        boolean firstSampleFlagsPresent = (flags & 4) != 0;
        int firstSampleFlags = defaultSampleValues.flags;
        if (firstSampleFlagsPresent) {
            firstSampleFlags = trun.readUnsignedIntToInt();
        }
        boolean sampleDurationsPresent = (flags & 256) != 0;
        boolean sampleSizesPresent = (flags & 512) != 0;
        boolean sampleFlagsPresent = (flags & 1024) != 0;
        boolean sampleCompositionTimeOffsetsPresent = (flags & 2048) != 0;
        out.initTables(sampleCount);
        int[] sampleSizeTable = out.sampleSizeTable;
        int[] sampleCompositionTimeOffsetTable = out.sampleCompositionTimeOffsetTable;
        long[] sampleDecodingTimeTable = out.sampleDecodingTimeTable;
        boolean[] sampleIsSyncFrameTable = out.sampleIsSyncFrameTable;
        long timescale = track.timescale;
        long cumulativeTime = decodeTime;
        boolean workaroundEveryVideoFrameIsSyncFrame = track.type == Track.TYPE_VIDEO && (workaroundFlags & 1) == 1;
        int i = 0;
        while (i < sampleCount) {
            int sampleDuration = sampleDurationsPresent ? trun.readUnsignedIntToInt() : defaultSampleValues.duration;
            int sampleSize = sampleSizesPresent ? trun.readUnsignedIntToInt() : defaultSampleValues.size;
            if (i == 0 && firstSampleFlagsPresent) {
                sampleFlags = firstSampleFlags;
            } else {
                sampleFlags = sampleFlagsPresent ? trun.readInt() : defaultSampleValues.flags;
            }
            if (sampleCompositionTimeOffsetsPresent) {
                int sampleOffset = trun.readInt();
                sampleCompositionTimeOffsetTable[i] = (int) (((long) (sampleOffset * 1000)) / timescale);
            } else {
                sampleCompositionTimeOffsetTable[i] = 0;
            }
            sampleDecodingTimeTable[i] = (1000 * cumulativeTime) / timescale;
            sampleSizeTable[i] = sampleSize;
            sampleIsSyncFrameTable[i] = ((sampleFlags >> 16) & 1) == 0 && (!workaroundEveryVideoFrameIsSyncFrame || i == 0);
            cumulativeTime += (long) sampleDuration;
            i++;
        }
    }

    private static void parseUuid(ParsableByteArray uuid, TrackFragment out, byte[] extendedTypeScratch) {
        uuid.setPosition(8);
        uuid.readBytes(extendedTypeScratch, 0, 16);
        if (Arrays.equals(extendedTypeScratch, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            parseSenc(uuid, 16, out);
        }
    }

    private static void parseSenc(ParsableByteArray senc, TrackFragment out) {
        parseSenc(senc, 0, out);
    }

    private static void parseSenc(ParsableByteArray senc, int offset, TrackFragment out) {
        senc.setPosition(offset + 8);
        int fullAtom = senc.readInt();
        int flags = Atom.parseFullAtomFlags(fullAtom);
        if ((flags & 1) != 0) {
            throw new IllegalStateException("Overriding TrackEncryptionBox parameters is unsupported");
        }
        boolean subsampleEncryption = (flags & 2) != 0;
        int sampleCount = senc.readUnsignedIntToInt();
        if (sampleCount != out.length) {
            throw new IllegalStateException("Length mismatch: " + sampleCount + ", " + out.length);
        }
        Arrays.fill(out.sampleHasSubsampleEncryptionTable, 0, sampleCount, subsampleEncryption);
        out.initEncryptionData(senc.bytesLeft());
        out.fillEncryptionData(senc);
    }

    private static ChunkIndex parseSidx(ParsableByteArray atom, long inputPosition) {
        long earliestPresentationTime;
        long offset;
        atom.setPosition(8);
        int fullAtom = atom.readInt();
        int version = Atom.parseFullAtomVersion(fullAtom);
        atom.skipBytes(4);
        long timescale = atom.readUnsignedInt();
        if (version == 0) {
            earliestPresentationTime = atom.readUnsignedInt();
            offset = inputPosition + atom.readUnsignedInt();
        } else {
            earliestPresentationTime = atom.readUnsignedLongToLong();
            offset = inputPosition + atom.readUnsignedLongToLong();
        }
        atom.skipBytes(2);
        int referenceCount = atom.readUnsignedShort();
        int[] sizes = new int[referenceCount];
        long[] offsets = new long[referenceCount];
        long[] durationsUs = new long[referenceCount];
        long[] timesUs = new long[referenceCount];
        long time = earliestPresentationTime;
        long timeUs = Util.scaleLargeTimestamp(time, C.MICROS_PER_SECOND, timescale);
        for (int i = 0; i < referenceCount; i++) {
            int firstInt = atom.readInt();
            int type = Integer.MIN_VALUE & firstInt;
            if (type != 0) {
                throw new IllegalStateException("Unhandled indirect reference");
            }
            long referenceDuration = atom.readUnsignedInt();
            sizes[i] = Integer.MAX_VALUE & firstInt;
            offsets[i] = offset;
            timesUs[i] = timeUs;
            time += referenceDuration;
            timeUs = Util.scaleLargeTimestamp(time, C.MICROS_PER_SECOND, timescale);
            durationsUs[i] = timeUs - timesUs[i];
            atom.skipBytes(4);
            offset += (long) sizes[i];
        }
        return new ChunkIndex(sizes, offsets, durationsUs, timesUs);
    }

    private void readEncryptionData(ExtractorInput input) throws InterruptedException, IOException {
        this.fragmentRun.fillEncryptionData(input);
        this.parserState = 3;
    }

    private boolean readSample(ExtractorInput input) throws InterruptedException, IOException {
        if (this.sampleIndex >= this.fragmentRun.length) {
            enterReadingAtomHeaderState();
            return false;
        }
        if (this.parserState == 3) {
            this.sampleSize = this.fragmentRun.sampleSizeTable[this.sampleIndex];
            if (this.fragmentRun.definesEncryptionData) {
                this.sampleBytesWritten = appendSampleEncryptionData(this.fragmentRun.sampleEncryptionData);
                this.sampleSize += this.sampleBytesWritten;
            } else {
                this.sampleBytesWritten = 0;
            }
            this.sampleCurrentNalBytesRemaining = 0;
            this.parserState = 4;
        }
        if (this.track.nalUnitLengthFieldLength != -1) {
            byte[] nalLengthData = this.nalLength.data;
            nalLengthData[0] = 0;
            nalLengthData[1] = 0;
            nalLengthData[2] = 0;
            int nalUnitLengthFieldLength = this.track.nalUnitLengthFieldLength;
            int nalUnitLengthFieldLengthDiff = 4 - this.track.nalUnitLengthFieldLength;
            while (this.sampleBytesWritten < this.sampleSize) {
                if (this.sampleCurrentNalBytesRemaining == 0) {
                    input.readFully(this.nalLength.data, nalUnitLengthFieldLengthDiff, nalUnitLengthFieldLength);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    this.trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    this.sampleSize += nalUnitLengthFieldLengthDiff;
                } else {
                    int writtenBytes = this.trackOutput.sampleData(input, this.sampleCurrentNalBytesRemaining, false);
                    this.sampleBytesWritten += writtenBytes;
                    this.sampleCurrentNalBytesRemaining -= writtenBytes;
                }
            }
        } else {
            while (this.sampleBytesWritten < this.sampleSize) {
                this.sampleBytesWritten += this.trackOutput.sampleData(input, this.sampleSize - this.sampleBytesWritten, false);
            }
        }
        long sampleTimeUs = this.fragmentRun.getSamplePresentationTime(this.sampleIndex) * 1000;
        int sampleFlags = (this.fragmentRun.definesEncryptionData ? 2 : 0) | (this.fragmentRun.sampleIsSyncFrameTable[this.sampleIndex] ? 1 : 0);
        byte[] encryptionKey = this.fragmentRun.definesEncryptionData ? this.track.sampleDescriptionEncryptionBoxes[this.fragmentRun.sampleDescriptionIndex].keyId : null;
        this.trackOutput.sampleMetadata(sampleTimeUs, sampleFlags, this.sampleSize, 0, encryptionKey);
        this.sampleIndex++;
        this.parserState = 3;
        return true;
    }

    private int appendSampleEncryptionData(ParsableByteArray sampleEncryptionData) {
        TrackEncryptionBox encryptionBox = this.track.sampleDescriptionEncryptionBoxes[this.fragmentRun.sampleDescriptionIndex];
        int vectorSize = encryptionBox.initializationVectorSize;
        boolean subsampleEncryption = this.fragmentRun.sampleHasSubsampleEncryptionTable[this.sampleIndex];
        this.encryptionSignalByte.data[0] = (byte) ((subsampleEncryption ? 128 : 0) | vectorSize);
        this.encryptionSignalByte.setPosition(0);
        this.trackOutput.sampleData(this.encryptionSignalByte, 1);
        this.trackOutput.sampleData(sampleEncryptionData, vectorSize);
        if (!subsampleEncryption) {
            return vectorSize + 1;
        }
        int subsampleCount = sampleEncryptionData.readUnsignedShort();
        sampleEncryptionData.skipBytes(-2);
        int subsampleDataLength = (subsampleCount * 6) + 2;
        this.trackOutput.sampleData(sampleEncryptionData, subsampleDataLength);
        return vectorSize + 1 + subsampleDataLength;
    }

    private static boolean shouldParseAtom(int atom) {
        return atom == Atom.TYPE_avc1 || atom == Atom.TYPE_avc3 || atom == Atom.TYPE_esds || atom == Atom.TYPE_hdlr || atom == Atom.TYPE_mdat || atom == Atom.TYPE_mdhd || atom == Atom.TYPE_moof || atom == Atom.TYPE_moov || atom == Atom.TYPE_mp4a || atom == Atom.TYPE_mvhd || atom == Atom.TYPE_sidx || atom == Atom.TYPE_stsd || atom == Atom.TYPE_tfdt || atom == Atom.TYPE_tfhd || atom == Atom.TYPE_tkhd || atom == Atom.TYPE_traf || atom == Atom.TYPE_trak || atom == Atom.TYPE_trex || atom == Atom.TYPE_trun || atom == Atom.TYPE_mvex || atom == Atom.TYPE_mdia || atom == Atom.TYPE_minf || atom == Atom.TYPE_stbl || atom == Atom.TYPE_pssh || atom == Atom.TYPE_saiz || atom == Atom.TYPE_uuid || atom == Atom.TYPE_senc || atom == Atom.TYPE_pasp || atom == Atom.TYPE_s263;
    }

    private static boolean shouldParseContainerAtom(int atom) {
        return atom == Atom.TYPE_moov || atom == Atom.TYPE_trak || atom == Atom.TYPE_mdia || atom == Atom.TYPE_minf || atom == Atom.TYPE_stbl || atom == Atom.TYPE_avcC || atom == Atom.TYPE_moof || atom == Atom.TYPE_traf || atom == Atom.TYPE_mvex;
    }
}
