package com.google.android.exoplayer.text;

import android.text.Layout;

/* JADX INFO: loaded from: classes2.dex */
public class Cue {
    public static final int UNSET_VALUE = -1;
    public final Layout.Alignment alignment;
    public final int line;
    public final int position;
    public final int size;
    public final CharSequence text;

    public Cue() {
        this(null);
    }

    public Cue(CharSequence text) {
        this(text, -1, -1, null, -1);
    }

    public Cue(CharSequence text, int line, int position, Layout.Alignment alignment, int size) {
        this.text = text;
        this.line = line;
        this.position = position;
        this.alignment = alignment;
        this.size = size;
    }
}
