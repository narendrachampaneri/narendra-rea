package com.google.android.exoplayer.dash.mpd;

import android.net.Uri;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatWrapper;
import com.google.android.exoplayer.dash.DashSegmentIndex;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Representation implements FormatWrapper {
    public final String contentId;
    public final Format format;
    private final RangedUri initializationUri;
    public final long periodDurationMs;
    public final long periodStartMs;
    public final long presentationTimeOffsetUs;
    public final long revisionId;

    public abstract DashSegmentIndex getIndex();

    public abstract RangedUri getIndexUri();

    public static Representation newInstance(long periodStartMs, long periodDurationMs, String contentId, long revisionId, Format format, SegmentBase segmentBase) {
        if (segmentBase instanceof SegmentBase.SingleSegmentBase) {
            return new SingleSegmentRepresentation(periodStartMs, periodDurationMs, contentId, revisionId, format, (SegmentBase.SingleSegmentBase) segmentBase, -1L);
        }
        if (segmentBase instanceof SegmentBase.MultiSegmentBase) {
            return new MultiSegmentRepresentation(periodStartMs, periodDurationMs, contentId, revisionId, format, (SegmentBase.MultiSegmentBase) segmentBase);
        }
        throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
    }

    private Representation(long periodStartMs, long periodDurationMs, String contentId, long revisionId, Format format, SegmentBase segmentBase) {
        this.periodStartMs = periodStartMs;
        this.periodDurationMs = periodDurationMs;
        this.contentId = contentId;
        this.revisionId = revisionId;
        this.format = format;
        this.initializationUri = segmentBase.getInitialization(this);
        this.presentationTimeOffsetUs = segmentBase.getPresentationTimeOffsetUs();
    }

    @Override // com.google.android.exoplayer.chunk.FormatWrapper
    public Format getFormat() {
        return this.format;
    }

    public RangedUri getInitializationUri() {
        return this.initializationUri;
    }

    public String getCacheKey() {
        return this.contentId + "." + this.format.id + "." + this.revisionId;
    }

    public static class SingleSegmentRepresentation extends Representation {
        public final long contentLength;
        private final RangedUri indexUri;
        private final DashSingleSegmentIndex segmentIndex;
        public final Uri uri;

        public static SingleSegmentRepresentation newInstance(long periodStartMs, long periodDurationMs, String contentId, long revisionId, Format format, String uri, long initializationStart, long initializationEnd, long indexStart, long indexEnd, long contentLength) {
            RangedUri rangedUri = new RangedUri(uri, null, initializationStart, 1 + (initializationEnd - initializationStart));
            SegmentBase.SingleSegmentBase segmentBase = new SegmentBase.SingleSegmentBase(rangedUri, 1L, 0L, uri, indexStart, (indexEnd - indexStart) + 1);
            return new SingleSegmentRepresentation(periodStartMs, periodDurationMs, contentId, revisionId, format, segmentBase, contentLength);
        }

        public SingleSegmentRepresentation(long periodStartMs, long periodDurationMs, String contentId, long revisionId, Format format, SegmentBase.SingleSegmentBase segmentBase, long contentLength) {
            super(periodStartMs, periodDurationMs, contentId, revisionId, format, segmentBase);
            this.uri = Uri.parse(segmentBase.uri);
            this.indexUri = segmentBase.getIndex();
            this.contentLength = contentLength;
            this.segmentIndex = this.indexUri != null ? null : new DashSingleSegmentIndex(periodStartMs * 1000, periodDurationMs * 1000, new RangedUri(segmentBase.uri, null, 0L, -1L));
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public RangedUri getIndexUri() {
            return this.indexUri;
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public DashSegmentIndex getIndex() {
            return this.segmentIndex;
        }
    }

    public static class MultiSegmentRepresentation extends Representation implements DashSegmentIndex {
        private final SegmentBase.MultiSegmentBase segmentBase;

        public MultiSegmentRepresentation(long periodStartMs, long periodDurationMs, String contentId, long revisionId, Format format, SegmentBase.MultiSegmentBase segmentBase) {
            super(periodStartMs, periodDurationMs, contentId, revisionId, format, segmentBase);
            this.segmentBase = segmentBase;
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public RangedUri getIndexUri() {
            return null;
        }

        @Override // com.google.android.exoplayer.dash.mpd.Representation
        public DashSegmentIndex getIndex() {
            return this;
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public RangedUri getSegmentUrl(int segmentIndex) {
            return this.segmentBase.getSegmentUrl(this, segmentIndex);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public int getSegmentNum(long timeUs) {
            return this.segmentBase.getSegmentNum(timeUs - (this.periodStartMs * 1000));
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public long getTimeUs(int segmentIndex) {
            return this.segmentBase.getSegmentTimeUs(segmentIndex) + (this.periodStartMs * 1000);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public long getDurationUs(int segmentIndex) {
            return this.segmentBase.getSegmentDurationUs(segmentIndex);
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public int getFirstSegmentNum() {
            return this.segmentBase.getFirstSegmentNum();
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public int getLastSegmentNum() {
            return this.segmentBase.getLastSegmentNum();
        }

        @Override // com.google.android.exoplayer.dash.DashSegmentIndex
        public boolean isExplicit() {
            return this.segmentBase.isExplicit();
        }
    }
}
