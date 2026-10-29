package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
final class Sniffer {
    private static final int[] COMPATIBLE_BRANDS = {Util.getIntegerCodeForString("isom"), Util.getIntegerCodeForString("iso2"), Util.getIntegerCodeForString("avc1"), Util.getIntegerCodeForString("hvc1"), Util.getIntegerCodeForString("hev1"), Util.getIntegerCodeForString("mp41"), Util.getIntegerCodeForString("mp42"), Util.getIntegerCodeForString("3g2a"), Util.getIntegerCodeForString("3g2b"), Util.getIntegerCodeForString("3gr6"), Util.getIntegerCodeForString("3gs6"), Util.getIntegerCodeForString("3ge6"), Util.getIntegerCodeForString("3gg6"), Util.getIntegerCodeForString("M4V "), Util.getIntegerCodeForString("M4A "), Util.getIntegerCodeForString("f4v "), Util.getIntegerCodeForString("kddi"), Util.getIntegerCodeForString("M4VP"), Util.getIntegerCodeForString("qt  "), Util.getIntegerCodeForString("MSNV")};

    public static boolean sniffFragmented(ExtractorInput input) throws InterruptedException, IOException {
        return sniffInternal(input, 4096, true);
    }

    public static boolean sniffUnfragmented(ExtractorInput input) throws InterruptedException, IOException {
        return sniffInternal(input, 128, false);
    }

    private static boolean sniffInternal(ExtractorInput input, int searchLength, boolean fragmented) throws InterruptedException, IOException {
        long atomSize;
        long inputLength = input.getLength();
        if (inputLength == -1 || inputLength > searchLength) {
            inputLength = searchLength;
        }
        int bytesToSearch = (int) inputLength;
        ParsableByteArray buffer = new ParsableByteArray(64);
        boolean foundGoodFileType = false;
        boolean foundFragment = false;
        for (int bytesSearched = 0; bytesSearched < bytesToSearch; bytesSearched = (int) (((long) bytesSearched) + atomSize)) {
            int headerSize = 8;
            input.peekFully(buffer.data, 0, 8);
            buffer.setPosition(0);
            atomSize = buffer.readUnsignedInt();
            int atomType = buffer.readInt();
            if (atomSize == 1) {
                input.peekFully(buffer.data, 8, 8);
                headerSize = 16;
                atomSize = buffer.readLong();
            }
            if (atomSize < headerSize || atomSize > 2147483647L) {
                return false;
            }
            if (((long) bytesSearched) + atomSize > bytesToSearch) {
                break;
            }
            int atomDataSize = ((int) atomSize) - headerSize;
            if (atomType == Atom.TYPE_ftyp) {
                if (atomDataSize < 8) {
                    return false;
                }
                int compatibleBrandsCount = (atomDataSize - 8) / 4;
                input.peekFully(buffer.data, 0, (compatibleBrandsCount + 2) * 4);
                for (int i = 0; i < compatibleBrandsCount + 2; i++) {
                    if (i != 1 && isCompatibleBrand(buffer.readInt())) {
                        foundGoodFileType = true;
                        break;
                    }
                }
            } else {
                if (atomType == Atom.TYPE_moof) {
                    foundFragment = true;
                    break;
                }
                if (atomDataSize != 0) {
                    input.advancePeekPosition(atomDataSize);
                }
            }
        }
        return foundGoodFileType && fragmented == foundFragment;
    }

    private static boolean isCompatibleBrand(int brand) {
        if ((brand >>> 8) == Util.getIntegerCodeForString("3gp")) {
            return true;
        }
        int[] arr$ = COMPATIBLE_BRANDS;
        for (int compatibleBrand : arr$) {
            if (compatibleBrand == brand) {
                return true;
            }
        }
        return false;
    }

    private Sniffer() {
    }
}
