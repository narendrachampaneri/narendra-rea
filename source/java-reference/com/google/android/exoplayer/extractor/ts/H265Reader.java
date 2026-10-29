package com.google.android.exoplayer.extractor.ts;

import android.util.Log;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableBitArray;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
final class H265Reader extends ElementaryStreamReader {
    private static final int BLA_N_LP = 18;
    private static final int BLA_W_LP = 16;
    private static final int BLA_W_RADL = 17;
    private static final int CRA_NUT = 21;
    private static final int IDR_N_LP = 20;
    private static final int IDR_W_RADL = 19;
    private static final int PPS_NUT = 34;
    private static final int PREFIX_SEI_NUT = 39;
    private static final int RASL_R = 9;
    private static final int SPS_NUT = 33;
    private static final int SUFFIX_SEI_NUT = 40;
    private static final String TAG = "H265Reader";
    private static final int VPS_NUT = 32;
    private boolean foundFirstSample;
    private boolean hasOutputFormat;
    private boolean isKeyframe;
    private final NalUnitTargetBuffer pps;
    private final boolean[] prefixFlags;
    private final NalUnitTargetBuffer prefixSei;
    private long samplePosition;
    private long sampleTimeUs;
    private final SeiReader seiReader;
    private final ParsableByteArray seiWrapper;
    private final NalUnitTargetBuffer sps;
    private final NalUnitTargetBuffer suffixSei;
    private long totalBytesWritten;
    private final NalUnitTargetBuffer vps;

    public H265Reader(TrackOutput output, SeiReader seiReader) {
        super(output);
        this.seiReader = seiReader;
        this.prefixFlags = new boolean[3];
        this.vps = new NalUnitTargetBuffer(32, 128);
        this.sps = new NalUnitTargetBuffer(33, 128);
        this.pps = new NalUnitTargetBuffer(34, 128);
        this.prefixSei = new NalUnitTargetBuffer(39, 128);
        this.suffixSei = new NalUnitTargetBuffer(40, 128);
        this.seiWrapper = new ParsableByteArray();
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.seiReader.seek();
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.vps.reset();
        this.sps.reset();
        this.pps.reset();
        this.prefixSei.reset();
        this.suffixSei.reset();
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
                    int nalUnitType = NalUnitUtil.getH265NalUnitType(dataArray, nextNalUnitOffset);
                    int bytesWrittenPastNalUnit = limit - nextNalUnitOffset;
                    if (isFirstSliceSegmentInPic(dataArray, nextNalUnitOffset)) {
                        if (this.foundFirstSample) {
                            if (this.isKeyframe && !this.hasOutputFormat && this.vps.isCompleted() && this.sps.isCompleted() && this.pps.isCompleted()) {
                                parseMediaFormat(this.vps, this.sps, this.pps);
                            }
                            int flags = this.isKeyframe ? 1 : 0;
                            int size = ((int) (this.totalBytesWritten - this.samplePosition)) - bytesWrittenPastNalUnit;
                            this.output.sampleMetadata(this.sampleTimeUs, flags, size, bytesWrittenPastNalUnit, null);
                        }
                        this.foundFirstSample = true;
                        this.samplePosition = this.totalBytesWritten - ((long) bytesWrittenPastNalUnit);
                        this.sampleTimeUs = pesTimeUs;
                        this.isKeyframe = isRandomAccessPoint(nalUnitType);
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
        if (!this.hasOutputFormat) {
            this.vps.startNalUnit(nalUnitType);
            this.sps.startNalUnit(nalUnitType);
            this.pps.startNalUnit(nalUnitType);
        }
        this.prefixSei.startNalUnit(nalUnitType);
        this.suffixSei.startNalUnit(nalUnitType);
    }

    private void feedNalUnitTargetBuffersData(byte[] dataArray, int offset, int limit) {
        if (!this.hasOutputFormat) {
            this.vps.appendToNalUnit(dataArray, offset, limit);
            this.sps.appendToNalUnit(dataArray, offset, limit);
            this.pps.appendToNalUnit(dataArray, offset, limit);
        }
        this.prefixSei.appendToNalUnit(dataArray, offset, limit);
        this.suffixSei.appendToNalUnit(dataArray, offset, limit);
    }

    private void feedNalUnitTargetEnd(long pesTimeUs, int discardPadding) throws Throwable {
        this.vps.endNalUnit(discardPadding);
        this.sps.endNalUnit(discardPadding);
        this.pps.endNalUnit(discardPadding);
        if (this.prefixSei.endNalUnit(discardPadding)) {
            int unescapedLength = NalUnitUtil.unescapeStream(this.prefixSei.nalData, this.prefixSei.nalLength);
            this.seiWrapper.reset(this.prefixSei.nalData, unescapedLength);
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(this.seiWrapper, pesTimeUs, true);
        }
        if (this.suffixSei.endNalUnit(discardPadding)) {
            int unescapedLength2 = NalUnitUtil.unescapeStream(this.suffixSei.nalData, this.suffixSei.nalLength);
            this.seiWrapper.reset(this.suffixSei.nalData, unescapedLength2);
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(this.seiWrapper, pesTimeUs, true);
        }
    }

    private void parseMediaFormat(NalUnitTargetBuffer vps, NalUnitTargetBuffer sps, NalUnitTargetBuffer pps) throws Throwable {
        byte[] csd = new byte[vps.nalLength + sps.nalLength + pps.nalLength];
        System.arraycopy(vps.nalData, 0, csd, 0, vps.nalLength);
        System.arraycopy(sps.nalData, 0, csd, vps.nalLength, sps.nalLength);
        System.arraycopy(pps.nalData, 0, csd, vps.nalLength + sps.nalLength, pps.nalLength);
        NalUnitUtil.unescapeStream(sps.nalData, sps.nalLength);
        ParsableBitArray bitArray = new ParsableBitArray(sps.nalData);
        bitArray.skipBits(44);
        int maxSubLayersMinus1 = bitArray.readBits(3);
        bitArray.skipBits(1);
        bitArray.skipBits(88);
        bitArray.skipBits(8);
        int toSkip = 0;
        for (int i = 0; i < maxSubLayersMinus1; i++) {
            if (bitArray.readBits(1) == 1) {
                toSkip += 89;
            }
            if (bitArray.readBits(1) == 1) {
                toSkip += 8;
            }
        }
        bitArray.skipBits(toSkip);
        if (maxSubLayersMinus1 > 0) {
            bitArray.skipBits((8 - maxSubLayersMinus1) * 2);
        }
        bitArray.readUnsignedExpGolombCodedInt();
        int chromaFormatIdc = bitArray.readUnsignedExpGolombCodedInt();
        if (chromaFormatIdc == 3) {
            bitArray.skipBits(1);
        }
        int picWidthInLumaSamples = bitArray.readUnsignedExpGolombCodedInt();
        int picHeightInLumaSamples = bitArray.readUnsignedExpGolombCodedInt();
        if (bitArray.readBit()) {
            int confWinLeftOffset = bitArray.readUnsignedExpGolombCodedInt();
            int confWinRightOffset = bitArray.readUnsignedExpGolombCodedInt();
            int confWinTopOffset = bitArray.readUnsignedExpGolombCodedInt();
            int confWinBottomOffset = bitArray.readUnsignedExpGolombCodedInt();
            int subWidthC = (chromaFormatIdc == 1 || chromaFormatIdc == 2) ? 2 : 1;
            int subHeightC = chromaFormatIdc == 1 ? 2 : 1;
            picWidthInLumaSamples -= (confWinLeftOffset + confWinRightOffset) * subWidthC;
            picHeightInLumaSamples -= (confWinTopOffset + confWinBottomOffset) * subHeightC;
        }
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.readUnsignedExpGolombCodedInt();
        int log2MaxPicOrderCntLsbMinus4 = bitArray.readUnsignedExpGolombCodedInt();
        for (int i2 = bitArray.readBit() ? 0 : maxSubLayersMinus1; i2 <= maxSubLayersMinus1; i2++) {
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.readUnsignedExpGolombCodedInt();
        }
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.readUnsignedExpGolombCodedInt();
        bitArray.readUnsignedExpGolombCodedInt();
        if (bitArray.readBit() && bitArray.readBit()) {
            skipScalingList(bitArray);
        }
        bitArray.skipBits(2);
        if (bitArray.readBit()) {
            bitArray.skipBits(4);
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.readUnsignedExpGolombCodedInt();
            bitArray.skipBits(1);
        }
        skipShortTermRefPicSets(bitArray);
        if (bitArray.readBit()) {
            for (int i3 = 0; i3 < bitArray.readUnsignedExpGolombCodedInt(); i3++) {
                int ltRefPicPocLsbSpsLength = log2MaxPicOrderCntLsbMinus4 + 4;
                bitArray.skipBits(ltRefPicPocLsbSpsLength + 1);
            }
        }
        bitArray.skipBits(2);
        float pixelWidthHeightRatio = 1.0f;
        if (bitArray.readBit() && bitArray.readBit()) {
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
        this.output.format(MediaFormat.createVideoFormat(MimeTypes.VIDEO_H265, -1, -1L, picWidthInLumaSamples, picHeightInLumaSamples, pixelWidthHeightRatio, Collections.singletonList(csd)));
        this.hasOutputFormat = true;
    }

    private void skipScalingList(ParsableBitArray bitArray) {
        int sizeId = 0;
        while (sizeId < 4) {
            for (int matrixId = 0; matrixId < 6; matrixId += sizeId == 3 ? 3 : 1) {
                if (!bitArray.readBit()) {
                    bitArray.readUnsignedExpGolombCodedInt();
                } else {
                    int coefNum = Math.min(64, 1 << ((sizeId + 4) << 1));
                    if (sizeId > 1) {
                        bitArray.readSignedExpGolombCodedInt();
                    }
                    for (int i = 0; i < coefNum; i++) {
                        bitArray.readSignedExpGolombCodedInt();
                    }
                }
            }
            sizeId++;
        }
    }

    private static void skipShortTermRefPicSets(ParsableBitArray bitArray) {
        int numShortTermRefPicSets = bitArray.readUnsignedExpGolombCodedInt();
        boolean interRefPicSetPredictionFlag = false;
        int previousNumDeltaPocs = 0;
        for (int stRpsIdx = 0; stRpsIdx < numShortTermRefPicSets; stRpsIdx++) {
            if (stRpsIdx != 0) {
                interRefPicSetPredictionFlag = bitArray.readBit();
            }
            if (interRefPicSetPredictionFlag) {
                bitArray.skipBits(1);
                bitArray.readUnsignedExpGolombCodedInt();
                for (int j = 0; j <= previousNumDeltaPocs; j++) {
                    if (bitArray.readBit()) {
                        bitArray.skipBits(1);
                    }
                }
            } else {
                int numNegativePics = bitArray.readUnsignedExpGolombCodedInt();
                int numPositivePics = bitArray.readUnsignedExpGolombCodedInt();
                previousNumDeltaPocs = numNegativePics + numPositivePics;
                for (int i = 0; i < numNegativePics; i++) {
                    bitArray.readUnsignedExpGolombCodedInt();
                    bitArray.skipBits(1);
                }
                for (int i2 = 0; i2 < numPositivePics; i2++) {
                    bitArray.readUnsignedExpGolombCodedInt();
                    bitArray.skipBits(1);
                }
            }
        }
    }

    private static boolean isRandomAccessPoint(int nalUnitType) {
        return nalUnitType == 16 || nalUnitType == 17 || nalUnitType == 18 || nalUnitType == 19 || nalUnitType == 20 || nalUnitType == 21;
    }

    public static boolean isFirstSliceSegmentInPic(byte[] data, int offset) {
        int nalUnitType = NalUnitUtil.getH265NalUnitType(data, offset);
        return (nalUnitType <= 9 || (nalUnitType >= 16 && nalUnitType <= 21)) && (data[offset + 5] & 128) != 0;
    }
}
