package com.google.android.exoplayer.extractor.ts;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.text.eia608.Eia608Parser;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.ParsableByteArray;

/* JADX INFO: loaded from: classes2.dex */
final class SeiReader extends ElementaryStreamReader {
    public SeiReader(TrackOutput output) {
        super(output);
        output.format(MediaFormat.createTextFormat(MimeTypes.APPLICATION_EIA608));
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void seek() {
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray seiBuffer, long pesTimeUs, boolean startOfPacket) {
        int b;
        int b2;
        while (seiBuffer.bytesLeft() > 1) {
            int payloadType = 0;
            do {
                b = seiBuffer.readUnsignedByte();
                payloadType += b;
            } while (b == 255);
            int payloadSize = 0;
            do {
                b2 = seiBuffer.readUnsignedByte();
                payloadSize += b2;
            } while (b2 == 255);
            if (Eia608Parser.isSeiMessageEia608(payloadType, payloadSize, seiBuffer)) {
                this.output.sampleData(seiBuffer, payloadSize);
                this.output.sampleMetadata(pesTimeUs, 1, payloadSize, 0, null);
            } else {
                seiBuffer.skipBytes(payloadSize);
            }
        }
    }

    @Override // com.google.android.exoplayer.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }
}
