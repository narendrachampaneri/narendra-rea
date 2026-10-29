package com.google.android.exoplayer.text;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackRenderer;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public final class TextTrackRenderer extends TrackRenderer implements Handler.Callback {
    private static final List<Class<? extends SubtitleParser>> DEFAULT_PARSER_CLASSES = new ArrayList();
    private static final int MSG_UPDATE_OVERLAY = 0;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private Subtitle nextSubtitle;
    private int nextSubtitleEventIndex;
    private SubtitleParserHelper parserHelper;
    private int parserIndex;
    private HandlerThread parserThread;
    private final SampleSource.SampleSourceReader source;
    private Subtitle subtitle;
    private final SubtitleParser[] subtitleParsers;
    private final TextRenderer textRenderer;
    private final Handler textRendererHandler;
    private int trackIndex;

    static {
        try {
            DEFAULT_PARSER_CLASSES.add(Class.forName("com.google.android.exoplayer.text.webvtt.WebvttParser").asSubclass(SubtitleParser.class));
        } catch (ClassNotFoundException e) {
        }
        try {
            DEFAULT_PARSER_CLASSES.add(Class.forName("com.google.android.exoplayer.text.ttml.TtmlParser").asSubclass(SubtitleParser.class));
        } catch (ClassNotFoundException e2) {
        }
        try {
            DEFAULT_PARSER_CLASSES.add(Class.forName("com.google.android.exoplayer.text.subrip.SubripParser").asSubclass(SubtitleParser.class));
        } catch (ClassNotFoundException e3) {
        }
        try {
            DEFAULT_PARSER_CLASSES.add(Class.forName("com.google.android.exoplayer.text.tx3g.Tx3gParser").asSubclass(SubtitleParser.class));
        } catch (ClassNotFoundException e4) {
        }
    }

    public TextTrackRenderer(SampleSource source, TextRenderer textRenderer, Looper textRendererLooper, SubtitleParser... subtitleParsers) {
        this.source = source.register();
        this.textRenderer = (TextRenderer) Assertions.checkNotNull(textRenderer);
        this.textRendererHandler = textRendererLooper == null ? null : new Handler(textRendererLooper, this);
        if (subtitleParsers == null || subtitleParsers.length == 0) {
            subtitleParsers = new SubtitleParser[DEFAULT_PARSER_CLASSES.size()];
            for (int i = 0; i < subtitleParsers.length; i++) {
                try {
                    subtitleParsers[i] = DEFAULT_PARSER_CLASSES.get(i).newInstance();
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException("Unexpected error creating default parser", e);
                } catch (InstantiationException e2) {
                    throw new IllegalStateException("Unexpected error creating default parser", e2);
                }
            }
        }
        this.subtitleParsers = subtitleParsers;
        this.formatHolder = new MediaFormatHolder();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare(long positionUs) {
        boolean sourcePrepared = this.source.prepare(positionUs);
        if (!sourcePrepared) {
            return 0;
        }
        int trackCount = this.source.getTrackCount();
        for (int i = 0; i < this.subtitleParsers.length; i++) {
            for (int j = 0; j < trackCount; j++) {
                if (this.subtitleParsers[i].canParse(this.source.getTrackInfo(j).mimeType)) {
                    this.parserIndex = i;
                    this.trackIndex = j;
                    return 1;
                }
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long positionUs, boolean joining) {
        this.source.enable(this.trackIndex, positionUs);
        this.parserThread = new HandlerThread("textParser");
        this.parserThread.start();
        this.parserHelper = new SubtitleParserHelper(this.parserThread.getLooper(), this.subtitleParsers[this.parserIndex]);
        seekToInternal();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long positionUs) {
        this.source.seekToUs(positionUs);
        seekToInternal();
    }

    private void seekToInternal() {
        this.inputStreamEnded = false;
        this.subtitle = null;
        this.nextSubtitle = null;
        this.parserHelper.flush();
        clearTextRenderer();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long positionUs, long elapsedRealtimeUs) throws ExoPlaybackException {
        this.source.continueBuffering(this.trackIndex, positionUs);
        if (this.nextSubtitle == null) {
            try {
                this.nextSubtitle = this.parserHelper.getAndClearResult();
            } catch (IOException e) {
                throw new ExoPlaybackException(e);
            }
        }
        if (getState() == 3) {
            boolean textRendererNeedsUpdate = false;
            long subtitleNextEventTimeUs = Long.MAX_VALUE;
            if (this.subtitle != null) {
                subtitleNextEventTimeUs = getNextEventTime();
                while (subtitleNextEventTimeUs <= positionUs) {
                    this.nextSubtitleEventIndex++;
                    subtitleNextEventTimeUs = getNextEventTime();
                    textRendererNeedsUpdate = true;
                }
            }
            if (subtitleNextEventTimeUs == Long.MAX_VALUE && this.nextSubtitle != null && this.nextSubtitle.getStartTime() <= positionUs) {
                this.subtitle = this.nextSubtitle;
                this.nextSubtitle = null;
                this.nextSubtitleEventIndex = this.subtitle.getNextEventTimeIndex(positionUs);
                textRendererNeedsUpdate = true;
            }
            if (textRendererNeedsUpdate) {
                updateTextRenderer(this.subtitle.getCues(positionUs));
            }
            if (!this.inputStreamEnded && this.nextSubtitle == null && !this.parserHelper.isParsing()) {
                SampleHolder sampleHolder = this.parserHelper.getSampleHolder();
                sampleHolder.clearData();
                int result = this.source.readData(this.trackIndex, positionUs, this.formatHolder, sampleHolder, false);
                if (result == -3) {
                    this.parserHelper.startParseOperation();
                } else if (result == -1) {
                    this.inputStreamEnded = true;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.subtitle = null;
        this.nextSubtitle = null;
        this.parserThread.quit();
        this.parserThread = null;
        this.parserHelper = null;
        clearTextRenderer();
        this.source.disable(this.trackIndex);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onReleased() {
        this.source.release();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void maybeThrowError() throws ExoPlaybackException {
        try {
            this.source.maybeThrowError();
        } catch (IOException e) {
            throw new ExoPlaybackException(e);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.source.getTrackInfo(this.trackIndex).durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        return -3L;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.inputStreamEnded && (this.subtitle == null || getNextEventTime() == Long.MAX_VALUE);
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return true;
    }

    private long getNextEventTime() {
        if (this.nextSubtitleEventIndex == -1 || this.nextSubtitleEventIndex >= this.subtitle.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private void updateTextRenderer(List<Cue> cues) {
        if (this.textRendererHandler != null) {
            this.textRendererHandler.obtainMessage(0, cues).sendToTarget();
        } else {
            invokeRendererInternalCues(cues);
        }
    }

    private void clearTextRenderer() {
        updateTextRenderer(Collections.emptyList());
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message msg) {
        switch (msg.what) {
            case 0:
                invokeRendererInternalCues((List) msg.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternalCues(List<Cue> cues) {
        this.textRenderer.onCues(cues);
    }
}
