package com.google.android.exoplayer.util;

import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    /* JADX WARN: Bottom block not found for handler: all -> 0x0056 */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0054, code lost:
    
        r11 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int unescapeStream(byte[] data, int limit) throws Throwable {
        synchronized (scratchEscapePositionsLock) {
            int position = 0;
            int scratchEscapeCount = 0;
            while (position < limit) {
                try {
                    position = findNextUnescapeIndex(data, position, limit);
                    if (position < limit) {
                        if (scratchEscapePositions.length <= scratchEscapeCount) {
                            scratchEscapePositions = Arrays.copyOf(scratchEscapePositions, scratchEscapePositions.length * 2);
                        }
                        int scratchEscapeCount2 = scratchEscapeCount + 1;
                        scratchEscapePositions[scratchEscapeCount] = position;
                        position += 3;
                        scratchEscapeCount = scratchEscapeCount2;
                    }
                } catch (Throwable th) {
                    th = th;
                }
            }
            int unescapedLength = limit - scratchEscapeCount;
            int escapedPosition = 0;
            int unescapedPosition = 0;
            for (int i = 0; i < scratchEscapeCount; i++) {
                int nextEscapePosition = scratchEscapePositions[i];
                int copyLength = nextEscapePosition - escapedPosition;
                System.arraycopy(data, escapedPosition, data, unescapedPosition, copyLength);
                int unescapedPosition2 = unescapedPosition + copyLength;
                int unescapedPosition3 = unescapedPosition2 + 1;
                data[unescapedPosition2] = 0;
                unescapedPosition = unescapedPosition3 + 1;
                data[unescapedPosition3] = 0;
                escapedPosition += copyLength + 3;
            }
            int remainingLength = unescapedLength - unescapedPosition;
            System.arraycopy(data, escapedPosition, data, unescapedPosition, remainingLength);
            return unescapedLength;
        }
        while (true) {
            throw th;
        }
    }

    public static byte[] parseChildNalUnit(ParsableByteArray atom) {
        int length = atom.readUnsignedShort();
        int offset = atom.getPosition();
        atom.skipBytes(length);
        return CodecSpecificDataUtil.buildNalUnit(atom.data, offset, length);
    }

    public static int getNalUnitType(byte[] data, int offset) {
        return data[offset + 3] & ClosedCaptionCtrl.TAB_OFFSET_CHAN_2;
    }

    public static int getH265NalUnitType(byte[] data, int offset) {
        return (data[offset + 3] & 126) >> 1;
    }

    public static int findNalUnit(byte[] data, int startOffset, int endOffset, boolean[] prefixFlags) {
        boolean z;
        boolean z2;
        int length = endOffset - startOffset;
        Assertions.checkState(length >= 0);
        if (length != 0) {
            if (prefixFlags != null) {
                if (prefixFlags[0]) {
                    clearPrefixFlags(prefixFlags);
                    return startOffset - 3;
                }
                if (length > 1 && prefixFlags[1] && data[startOffset] == 1) {
                    clearPrefixFlags(prefixFlags);
                    return startOffset - 2;
                }
                if (length > 2 && prefixFlags[2] && data[startOffset] == 0 && data[startOffset + 1] == 1) {
                    clearPrefixFlags(prefixFlags);
                    return startOffset - 1;
                }
            }
            int limit = endOffset - 1;
            int i = startOffset + 2;
            while (i < limit) {
                if ((data[i] & 254) == 0) {
                    if (data[i - 2] == 0 && data[i - 1] == 0 && data[i] == 1) {
                        if (prefixFlags != null) {
                            clearPrefixFlags(prefixFlags);
                        }
                        return i - 2;
                    }
                    i -= 2;
                }
                i += 3;
            }
            if (prefixFlags != null) {
                if (length > 2) {
                    z = data[endOffset + (-3)] == 0 && data[endOffset + (-2)] == 0 && data[endOffset + (-1)] == 1;
                } else if (length == 2) {
                    z = prefixFlags[2] && data[endOffset + (-2)] == 0 && data[endOffset + (-1)] == 1;
                } else {
                    z = prefixFlags[1] && data[endOffset + (-1)] == 1;
                }
                prefixFlags[0] = z;
                if (length > 1) {
                    z2 = data[endOffset + (-2)] == 0 && data[endOffset + (-1)] == 0;
                } else {
                    z2 = prefixFlags[2] && data[endOffset + (-1)] == 0;
                }
                prefixFlags[1] = z2;
                prefixFlags[2] = data[endOffset + (-1)] == 0;
                return endOffset;
            }
            return endOffset;
        }
        return endOffset;
    }

    public static void clearPrefixFlags(boolean[] prefixFlags) {
        prefixFlags[0] = false;
        prefixFlags[1] = false;
        prefixFlags[2] = false;
    }

    private static int findNextUnescapeIndex(byte[] bytes, int offset, int limit) {
        for (int i = offset; i < limit - 2; i++) {
            if (bytes[i] == 0 && bytes[i + 1] == 0 && bytes[i + 2] == 3) {
                return i;
            }
        }
        return limit;
    }

    private NalUnitUtil() {
    }
}
