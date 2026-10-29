package com.google.android.exoplayer.extractor.ts;

import android.util.Log;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class H264Reader extends ElementaryStreamReader {
    private static final int FRAME_TYPE_ALL_I = 7;
    private static final int FRAME_TYPE_I = 2;
    private static final int NAL_UNIT_TYPE_AUD = 9;
    private static final int NAL_UNIT_TYPE_IDR = 5;
    private static final int NAL_UNIT_TYPE_IFR = 1;
    private static final int NAL_UNIT_TYPE_PPS = 8;
    private static final int NAL_UNIT_TYPE_SEI = 6;
    private static final int NAL_UNIT_TYPE_SPS = 7;
    private static final String TAG = "H264Reader";
    private boolean foundFirstSample;
    private boolean hasOutputFormat;
    private final IfrParserBuffer ifrParserBuffer;
    private boolean isKeyframe;
    private final NalUnitTargetBuffer pps;
    private final boolean[] prefixFlags;
    private long samplePosition;
    private long sampleTimeUs;
    private final NalUnitTargetBuffer sei;
    private final SeiReader seiReader;
    private final ParsableByteArray seiWrapper;
    private final NalUnitTargetBuffer sps;
    private long totalBytesWritten;

    public H264Reader(TrackOutput output, SeiReader seiReader, boolean idrKeyframesOnly) {
        super(output);
        this.seiReader = seiReader;
        this.prefixFlags = new boolean[3];
        this.ifrParserBuffer = idrKeyframesOnly ? null : new IfrParserBuffer();
        this.sps = new NalUnitTargetBuffer(7, 128);
        this.pps = new NalUnitTargetBuffer(8, 128);
        this.sei = new NalUnitTargetBuffer(6, 128);
        this.seiWrapper = new ParsableByteArray();
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.seiReader.seek();
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.sps.reset();
        this.pps.reset();
        this.sei.reset();
        if (this.ifrParserBuffer != null) {
            this.ifrParserBuffer.reset();
        }
        this.foundFirstSample = false;
        this.totalBytesWritten = 0L;
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray data, long pesTimeUs, boolean startOfPacket) throws Throwable {
        while (data.bytesLeft() > 0) {
            int offset = data.getPosition();
            int limit = data.limit();
            byte[] dataArray = data.data;
            this.totalBytesWritten += (long) data.bytesLeft();
            this.output.sampleData(data, data.bytesLeft());
            while (offset < limit) {
                int nextNalUnitOffset = NalUnitUtil.findNalUnit(dataArray, offset, limit, this.prefixFlags);
                if (nextNalUnitOffset < limit) {
                    int lengthToNalUnit = nextNalUnitOffset - offset;
                    if (lengthToNalUnit > 0) {
                        feedNalUnitTargetBuffersData(dataArray, offset, nextNalUnitOffset);
                    }
                    int nalUnitType = NalUnitUtil.getNalUnitType(dataArray, nextNalUnitOffset);
                    int bytesWrittenPastNalUnit = limit - nextNalUnitOffset;
                    switch (nalUnitType) {
                        case 5:
                            this.isKeyframe = true;
                            break;
                        case 9:
                            if (this.foundFirstSample) {
                                if (this.ifrParserBuffer != null && this.ifrParserBuffer.isCompleted()) {
                                    int sliceType = this.ifrParserBuffer.getSliceType();
                                    this.isKeyframe = (sliceType == 2 || sliceType == 7) | this.isKeyframe;
                                    this.ifrParserBuffer.reset();
                                }
                                if (this.isKeyframe && !this.hasOutputFormat && this.sps.isCompleted() && this.pps.isCompleted()) {
                                    parseMediaFormat(this.sps, this.pps);
                                }
                                int flags = this.isKeyframe ? 1 : 0;
                                int size = ((int) (this.totalBytesWritten - this.samplePosition)) - bytesWrittenPastNalUnit;
                                this.output.sampleMetadata(this.sampleTimeUs, flags, size, bytesWrittenPastNalUnit, null);
                            }
                            this.foundFirstSample = true;
                            this.samplePosition = this.totalBytesWritten - ((long) bytesWrittenPastNalUnit);
                            this.sampleTimeUs = pesTimeUs;
                            this.isKeyframe = false;
                            break;
                    }
                    feedNalUnitTargetEnd(pesTimeUs, lengthToNalUnit < 0 ? -lengthToNalUnit : 0);
                    feedNalUnitTargetBuffersStart(nalUnitType);
                    offset = nextNalUnitOffset + 3;
                } else {
                    feedNalUnitTargetBuffersData(dataArray, offset, limit);
                    offset = limit;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private void feedNalUnitTargetBuffersStart(int nalUnitType) {
        if (this.ifrParserBuffer != null) {
            this.ifrParserBuffer.startNalUnit(nalUnitType);
        }
        if (!this.hasOutputFormat) {
            this.sps.startNalUnit(nalUnitType);
            this.pps.startNalUnit(nalUnitType);
        }
        this.sei.startNalUnit(nalUnitType);
    }

    private void feedNalUnitTargetBuffersData(byte[] dataArray, int offset, int limit) {
        if (this.ifrParserBuffer != null) {
            this.ifrParserBuffer.appendToNalUnit(dataArray, offset, limit);
        }
        if (!this.hasOutputFormat) {
            this.sps.appendToNalUnit(dataArray, offset, limit);
            this.pps.appendToNalUnit(dataArray, offset, limit);
        }
        this.sei.appendToNalUnit(dataArray, offset, limit);
    }

    private void feedNalUnitTargetEnd(long pesTimeUs, int discardPadding) throws Throwable {
        this.sps.endNalUnit(discardPadding);
        this.pps.endNalUnit(discardPadding);
        if (this.sei.endNalUnit(discardPadding)) {
            int unescapedLength = NalUnitUtil.unescapeStream(this.sei.nalData, this.sei.nalLength);
            this.seiWrapper.reset(this.sei.nalData, unescapedLength);
            this.seiWrapper.setPosition(4);
            this.seiReader.consume(this.seiWrapper, pesTimeUs, true);
        }
    }

    private void parseMediaFormat(NalUnitTargetBuffer sps, NalUnitTargetBuffer pps) throws Throwable {
        int cropUnitX;
        int cropUnitY;
        byte[] spsData = new byte[sps.nalLength];
        byte[] ppsData = new byte[pps.nalLength];
        System.arraycopy(sps.nalData, 0, spsData, 0, sps.nalLength);
        System.arraycopy(pps.nalData, 0, ppsData, 0, pps.nalLength);
        List<byte[]> initializationData = new ArrayList<>();
        initializationData.add(spsData);
        initializationData.add(ppsData);
        NalUnitUtil.unescapeStream(sps.nalData, sps.nalLength);
        ParsableBitArray bitArray = new ParsableBitArray(sps.nalData);
        bitArray.skipBits(32);
        int profileIdc = bitArray.readBits(8);
        bitArray.skipBits(16);
        bitArray.readUnsignedExpGolombCodedInt();
        int chromaFormatIdc = 1;
        if (profileIdc == 100 || profileIdc == 110 || profileIdc == 122 || profileIdc == 244 || profileIdc == 44 || profileIdc == 83 || profileIdc == 86 || profileIdc == 118 || profileIdc == 128 || profileIdc == 138) {
            chromaFormatIdc = bitArray.readUnsignedExpGolombCodedInt();
            if (chromaFormatIdc == 3) {
                bitArray.skipBits(1);
            }
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.skipBits(1);
            boolean seqScalingMatrixPresentFlag = bitArray.readBit();
            if (seqScalingMatrixPresentFlag) {
                int limit = chromaFormatIdc != 3 ? 8 : 12;
                int i = 0;
                while (i < limit) {
                    boolean seqScalingListPresentFlag = bitArray.readBit();
                    if (seqScalingListPresentFlag) {
                        skipScalingList(bitArray, i < 6 ? 16 : 64);
                    }
                    i++;
                }
            }
        }
        bitArray.readUnsignedExpGolombCodedInt();
        long picOrderCntType = bitArray.readUnsignedExpGolombCodedInt();
        if (picOrderCntType == 0) {
            bitArray.readUnsignedExpGolombCodedInt();
        } else if (picOrderCntType == 1) {
            bitArray.skipBits(1);
            bitArray.readSignedExpGolombCodedInt();
            bitArray.readSignedExpGolombCodedInt();
            long numRefFramesInPicOrderCntCycle = bitArray.readUnsignedExpGolombCodedInt();
            for (int i2 = 0; i2 < numRefFramesInPicOrderCntCycle; i2++) {
                bitArray.readUnsignedExpGolombCodedInt();
            }
        }
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.skipBits(1);
        int picWidthInMbs = bitArray.readUnsignedExpGolombCodedInt() + 1;
        int picHeightInMapUnits = bitArray.readUnsignedExpGolombCodedInt() + 1;
        boolean frameMbsOnlyFlag = bitArray.readBit();
        int frameHeightInMbs = (2 - (frameMbsOnlyFlag ? 1 : 0)) * picHeightInMapUnits;
        if (!frameMbsOnlyFlag) {
            bitArray.skipBits(1);
        }
        bitArray.skipBits(1);
        int frameWidth = picWidthInMbs * 16;
        int frameHeight = frameHeightInMbs * 16;
        boolean frameCroppingFlag = bitArray.readBit();
        if (frameCroppingFlag) {
            int frameCropLeftOffset = bitArray.readUnsignedExpGolombCodedInt();
            int frameCropRightOffset = bitArray.readUnsignedExpGolombCodedInt();
            int frameCropTopOffset = bitArray.readUnsignedExpGolombCodedInt();
            int frameCropBottomOffset = bitArray.readUnsignedExpGolombCodedInt();
            if (chromaFormatIdc == 0) {
                cropUnitX = 1;
                cropUnitY = 2 - (frameMbsOnlyFlag ? 1 : 0);
            } else {
                int subWidthC = chromaFormatIdc == 3 ? 1 : 2;
                int subHeightC = chromaFormatIdc == 1 ? 2 : 1;
                cropUnitX = subWidthC;
                cropUnitY = subHeightC * (2 - (frameMbsOnlyFlag ? 1 : 0));
            }
            frameWidth -= (frameCropLeftOffset + frameCropRightOffset) * cropUnitX;
            frameHeight -= (frameCropTopOffset + frameCropBottomOffset) * cropUnitY;
        }
        float pixelWidthHeightRatio = 1.0f;
        boolean vuiParametersPresentFlag = bitArray.readBit();
        if (vuiParametersPresentFlag) {
            boolean aspectRatioInfoPresentFlag = bitArray.readBit();
            if (aspectRatioInfoPresentFlag) {
                int aspectRatioIdc = bitArray.readBits(8);
                if (aspectRatioIdc == 255) {
                    int sarWidth = bitArray.readBits(16);
                    int sarHeight = bitArray.readBits(16);
                    if (sarWidth != 0 && sarHeight != 0) {
                        pixelWidthHeightRatio = sarWidth / sarHeight;
                    }
                } else if (aspectRatioIdc < NalUnitUtil.ASPECT_RATIO_IDC_VALUES.length) {
                    pixelWidthHeightRatio = NalUnitUtil.ASPECT_RATIO_IDC_VALUES[aspectRatioIdc];
                } else {
                    Log.w(TAG, "Unexpected aspect_ratio_idc value: " + aspectRatioIdc);
                }
            }
        }
        this.output.format(MediaFormat.createVideoFormat(MimeTypes.VIDEO_H264, -1, -1L, frameWidth, frameHeight, pixelWidthHeightRatio, initializationData));
        this.hasOutputFormat = true;
    }

    private void skipScalingList(ParsableBitArray bitArray, int size) {
        int lastScale = 8;
        int nextScale = 8;
        for (int i = 0; i < size; i++) {
            if (nextScale != 0) {
                int deltaScale = bitArray.readSignedExpGolombCodedInt();
                nextScale = ((lastScale + deltaScale) + 256) % 256;
            }
            if (nextScale != 0) {
                lastScale = nextScale;
            }
        }
    }

    private static final class IfrParserBuffer {
        private static final int DEFAULT_BUFFER_SIZE = 128;
        private static final int NOT_SET = -1;
        private int ifrLength;
        private boolean isFilling;
        private int sliceType;
        private byte[] ifrData = new byte[128];
        private final ParsableBitArray scratchSliceType = new ParsableBitArray(this.ifrData);

        public IfrParserBuffer() {
            reset();
        }

        public void reset() {
            this.isFilling = false;
            this.ifrLength = 0;
            this.sliceType = -1;
        }

        public boolean isCompleted() {
            return this.sliceType != -1;
        }

        public void startNalUnit(int nalUnitType) {
            if (nalUnitType == 1) {
                reset();
                this.isFilling = true;
            }
        }

        public void appendToNalUnit(byte[] data, int offset, int limit) {
            if (this.isFilling) {
                int readLength = limit - offset;
                if (this.ifrData.length < this.ifrLength + readLength) {
                    this.ifrData = Arrays.copyOf(this.ifrData, (this.ifrLength + readLength) * 2);
                }
                System.arraycopy(data, offset, this.ifrData, this.ifrLength, readLength);
                this.ifrLength += readLength;
                this.scratchSliceType.reset(this.ifrData, this.ifrLength);
                int len = this.scratchSliceType.peekExpGolombCodedNumLength();
                if (len != -1 && len <= this.scratchSliceType.bitsLeft()) {
                    this.scratchSliceType.skipBits(len);
                    int len2 = this.scratchSliceType.peekExpGolombCodedNumLength();
                    if (len2 != -1 && len2 <= this.scratchSliceType.bitsLeft()) {
                        this.sliceType = this.scratchSliceType.readUnsignedExpGolombCodedInt();
                        this.isFilling = false;
                    }
                }
            }
        }

        public int getSliceType() {
            return this.sliceType;
        }
    }
}
