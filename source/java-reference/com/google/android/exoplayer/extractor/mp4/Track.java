package com.google.android.exoplayer.extractor.mp4;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public final class Track {
    public final long durationUs;
    public final int id;
    public final MediaFormat mediaFormat;
    public final int nalUnitLengthFieldLength;
    public final TrackEncryptionBox[] sampleDescriptionEncryptionBoxes;
    public final long timescale;
    public final int type;
    public static final int TYPE_VIDEO = Util.getIntegerCodeForString("vide");
    public static final int TYPE_AUDIO = Util.getIntegerCodeForString("soun");
    public static final int TYPE_TEXT = Util.getIntegerCodeForString(MimeTypes.BASE_TYPE_TEXT);
    public static final int TYPE_SUBTITLE = Util.getIntegerCodeForString("sbtl");

    public Track(int id, int type, long timescale, long durationUs, MediaFormat mediaFormat, TrackEncryptionBox[] sampleDescriptionEncryptionBoxes, int nalUnitLengthFieldLength) {
        this.id = id;
        this.type = type;
        this.timescale = timescale;
        this.durationUs = durationUs;
        this.mediaFormat = mediaFormat;
        this.sampleDescriptionEncryptionBoxes = sampleDescriptionEncryptionBoxes;
        this.nalUnitLengthFieldLength = nalUnitLengthFieldLength;
    }
}
