package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaExtractor;
import android.net.Uri;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.Util;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(16)
@Deprecated
public final class FrameworkSampleSource implements SampleSource, SampleSource.SampleSourceReader {
    private static final int ALLOWED_FLAGS_MASK = 3;
    private static final int TRACK_STATE_DISABLED = 0;
    private static final int TRACK_STATE_ENABLED = 1;
    private static final int TRACK_STATE_FORMAT_SENT = 2;
    private final Context context;
    private MediaExtractor extractor;
    private final FileDescriptor fileDescriptor;
    private final long fileDescriptorLength;
    private final long fileDescriptorOffset;
    private final Map<String, String> headers;
    private boolean[] pendingDiscontinuities;
    private IOException preparationError;
    private boolean prepared;
    private int remainingReleaseCount;
    private long seekPositionUs;
    private TrackInfo[] trackInfos;
    private int[] trackStates;
    private final Uri uri;

    public FrameworkSampleSource(Context context, Uri uri, Map<String, String> headers) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.context = (Context) Assertions.checkNotNull(context);
        this.uri = (Uri) Assertions.checkNotNull(uri);
        this.headers = headers;
        this.fileDescriptor = null;
        this.fileDescriptorOffset = 0L;
        this.fileDescriptorLength = 0L;
    }

    public FrameworkSampleSource(FileDescriptor fileDescriptor, long fileDescriptorOffset, long fileDescriptorLength) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.fileDescriptor = (FileDescriptor) Assertions.checkNotNull(fileDescriptor);
        this.fileDescriptorOffset = fileDescriptorOffset;
        this.fileDescriptorLength = fileDescriptorLength;
        this.context = null;
        this.uri = null;
        this.headers = null;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public SampleSource.SampleSourceReader register() {
        this.remainingReleaseCount++;
        return this;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean prepare(long positionUs) {
        if (!this.prepared) {
            if (this.preparationError != null) {
                return false;
            }
            this.extractor = new MediaExtractor();
            try {
                if (this.context != null) {
                    this.extractor.setDataSource(this.context, this.uri, this.headers);
                } else {
                    this.extractor.setDataSource(this.fileDescriptor, this.fileDescriptorOffset, this.fileDescriptorLength);
                }
                this.trackStates = new int[this.extractor.getTrackCount()];
                this.pendingDiscontinuities = new boolean[this.trackStates.length];
                this.trackInfos = new TrackInfo[this.trackStates.length];
                for (int i = 0; i < this.trackStates.length; i++) {
                    android.media.MediaFormat format = this.extractor.getTrackFormat(i);
                    long durationUs = format.containsKey("durationUs") ? format.getLong("durationUs") : -1L;
                    String mime = format.getString("mime");
                    this.trackInfos[i] = new TrackInfo(mime, durationUs);
                }
                this.prepared = true;
            } catch (IOException e) {
                this.preparationError = e;
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int getTrackCount() {
        Assertions.checkState(this.prepared);
        return this.trackStates.length;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public TrackInfo getTrackInfo(int track) {
        Assertions.checkState(this.prepared);
        return this.trackInfos[track];
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void enable(int track, long positionUs) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[track] == 0);
        this.trackStates[track] = 1;
        this.extractor.selectTrack(track);
        seekToUsInternal(positionUs, positionUs != 0);
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public boolean continueBuffering(int track, long positionUs) {
        return true;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public int readData(int track, long positionUs, MediaFormatHolder formatHolder, SampleHolder sampleHolder, boolean onlyReadDiscontinuity) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[track] != 0);
        if (this.pendingDiscontinuities[track]) {
            this.pendingDiscontinuities[track] = false;
            return -5;
        }
        if (onlyReadDiscontinuity) {
            return -2;
        }
        if (this.trackStates[track] != 2) {
            formatHolder.format = MediaFormat.createFromFrameworkMediaFormatV16(this.extractor.getTrackFormat(track));
            formatHolder.drmInitData = Util.SDK_INT >= 18 ? getDrmInitDataV18() : null;
            this.trackStates[track] = 2;
            return -4;
        }
        int extractorTrackIndex = this.extractor.getSampleTrackIndex();
        if (extractorTrackIndex == track) {
            if (sampleHolder.data != null) {
                int offset = sampleHolder.data.position();
                sampleHolder.size = this.extractor.readSampleData(sampleHolder.data, offset);
                sampleHolder.data.position(sampleHolder.size + offset);
            } else {
                sampleHolder.size = 0;
            }
            sampleHolder.timeUs = this.extractor.getSampleTime();
            sampleHolder.flags = this.extractor.getSampleFlags() & 3;
            if (sampleHolder.isEncrypted()) {
                sampleHolder.cryptoInfo.setFromExtractorV16(this.extractor);
            }
            this.seekPositionUs = -1L;
            this.extractor.advance();
            return -3;
        }
        return extractorTrackIndex < 0 ? -1 : -2;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void disable(int track) {
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackStates[track] != 0);
        this.extractor.unselectTrack(track);
        this.pendingDiscontinuities[track] = false;
        this.trackStates[track] = 0;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void maybeThrowError() throws IOException {
        if (this.preparationError != null) {
            throw this.preparationError;
        }
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void seekToUs(long positionUs) {
        Assertions.checkState(this.prepared);
        seekToUsInternal(positionUs, false);
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public long getBufferedPositionUs() {
        Assertions.checkState(this.prepared);
        long bufferedDurationUs = this.extractor.getCachedDuration();
        if (bufferedDurationUs == -1) {
            return -1L;
        }
        long sampleTime = this.extractor.getSampleTime();
        if (sampleTime == -1) {
            return -3L;
        }
        return sampleTime + bufferedDurationUs;
    }

    @Override // com.google.android.exoplayer.SampleSource.SampleSourceReader
    public void release() {
        Assertions.checkState(this.remainingReleaseCount > 0);
        int i = this.remainingReleaseCount - 1;
        this.remainingReleaseCount = i;
        if (i == 0 && this.extractor != null) {
            this.extractor.release();
            this.extractor = null;
        }
    }

    @TargetApi(18)
    private DrmInitData getDrmInitDataV18() {
        Map<UUID, byte[]> psshInfo = this.extractor.getPsshInfo();
        if (psshInfo == null || psshInfo.isEmpty()) {
            return null;
        }
        DrmInitData.Mapped drmInitData = new DrmInitData.Mapped(MimeTypes.VIDEO_MP4);
        for (UUID uuid : psshInfo.keySet()) {
            byte[] psshAtom = PsshAtomUtil.buildPsshAtom(uuid, psshInfo.get(uuid));
            drmInitData.put(uuid, psshAtom);
        }
        return drmInitData;
    }

    private void seekToUsInternal(long positionUs, boolean force) {
        if (force || this.seekPositionUs != positionUs) {
            this.seekPositionUs = positionUs;
            this.extractor.seekTo(positionUs, 0);
            for (int i = 0; i < this.trackStates.length; i++) {
                if (this.trackStates[i] != 0) {
                    this.pendingDiscontinuities[i] = true;
                }
            }
        }
    }
}
