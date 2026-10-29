package com.google.android.exoplayer.util;

import com.amazon.ags.constants.OverlaySize;
import com.google.android.exoplayer.MediaFormat;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class Ac3Util {
    private static final int[] SAMPLE_RATES = {48000, 44100, 32000};
    private static final int[] CHANNEL_COUNTS = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] BITRATES = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, OverlaySize.TOAST_WIDTH_PIXELS, 384, 448, 512, 576, 640};
    private static final int[] FRMSIZECOD_TO_FRAME_SIZE_44_1 = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, HttpStatus.SC_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static MediaFormat parseAnnexFAc3Format(ParsableByteArray data) {
        int fscod = (data.readUnsignedByte() & 192) >> 6;
        int sampleRate = SAMPLE_RATES[fscod];
        int nextByte = data.readUnsignedByte();
        int channelCount = CHANNEL_COUNTS[(nextByte & 56) >> 3];
        if ((nextByte & 4) != 0) {
            channelCount++;
        }
        return MediaFormat.createAudioFormat(MimeTypes.AUDIO_AC3, -1, channelCount, sampleRate, null);
    }

    public static MediaFormat parseAnnexFEAc3Format(ParsableByteArray data) {
        data.skipBytes(2);
        int fscod = (data.readUnsignedByte() & 192) >> 6;
        int sampleRate = SAMPLE_RATES[fscod];
        int nextByte = data.readUnsignedByte();
        int channelCount = CHANNEL_COUNTS[(nextByte & 14) >> 1];
        if ((nextByte & 1) != 0) {
            channelCount++;
        }
        return MediaFormat.createAudioFormat(MimeTypes.AUDIO_EC3, -1, channelCount, sampleRate, null);
    }

    public static MediaFormat parseFrameAc3Format(ParsableBitArray data) {
        data.skipBits(32);
        int fscod = data.readBits(2);
        data.skipBits(14);
        int acmod = data.readBits(3);
        if ((acmod & 1) != 0 && acmod != 1) {
            data.skipBits(2);
        }
        if ((acmod & 4) != 0) {
            data.skipBits(2);
        }
        if (acmod == 2) {
            data.skipBits(2);
        }
        boolean lfeon = data.readBit();
        return MediaFormat.createAudioFormat(MimeTypes.AUDIO_AC3, -1, (lfeon ? 1 : 0) + CHANNEL_COUNTS[acmod], SAMPLE_RATES[fscod], null);
    }

    public static int parseFrameSize(ParsableBitArray data) {
        data.skipBits(32);
        int fscod = data.readBits(2);
        int frmsizecod = data.readBits(6);
        int sampleRate = SAMPLE_RATES[fscod];
        int bitrate = BITRATES[frmsizecod / 2];
        if (sampleRate == 32000) {
            return bitrate * 6;
        }
        if (sampleRate == 44100) {
            return (FRMSIZECOD_TO_FRAME_SIZE_44_1[frmsizecod / 2] + (frmsizecod % 2)) * 2;
        }
        return bitrate * 4;
    }

    public static int getBitrate(int bufferSize, int sampleRate) {
        int unscaledBitrate = bufferSize * 8 * sampleRate;
        return (768000 + unscaledBitrate) / 1536000;
    }

    private Ac3Util() {
    }
}
