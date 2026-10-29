package com.google.android.exoplayer.text.tx3g;

import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.text.Subtitle;
import com.google.android.exoplayer.text.SubtitleParser;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class Tx3gParser implements SubtitleParser {
    @Override // com.google.android.exoplayer.text.SubtitleParser
    public Subtitle parse(InputStream inputStream, String inputEncoding, long startTimeUs) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        String cueText = dataInputStream.readUTF();
        return new Tx3gSubtitle(startTimeUs, new Cue(cueText));
    }

    @Override // com.google.android.exoplayer.text.SubtitleParser
    public boolean canParse(String mimeType) {
        return MimeTypes.APPLICATION_TX3G.equals(mimeType);
    }
}
