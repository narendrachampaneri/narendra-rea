package com.google.android.exoplayer.smoothstreaming;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Base64;
import android.util.SparseArray;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.ChunkSource;
import com.google.android.exoplayer.chunk.ContainerMediaChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.FormatEvaluator;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer.extractor.mp4.Track;
import com.google.android.exoplayer.extractor.mp4.TrackEncryptionBox;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.CodecSpecificDataUtil;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SmoothStreamingChunkSource implements ChunkSource {
    private static final int INITIALIZATION_VECTOR_SIZE = 8;
    private static final int MINIMUM_MANIFEST_REFRESH_PERIOD_MS = 5000;
    private SmoothStreamingManifest currentManifest;
    private int currentManifestChunkOffset;
    private final DataSource dataSource;
    private final DrmInitData drmInitData;
    private final FormatEvaluator.Evaluation evaluation;
    private final SparseArray<ChunkExtractorWrapper> extractorWrappers;
    private IOException fatalError;
    private boolean finishedCurrentManifest;
    private final FormatEvaluator formatEvaluator;
    private final Format[] formats;
    private final long liveEdgeLatencyUs;
    private final ManifestFetcher<SmoothStreamingManifest> manifestFetcher;
    private final int maxHeight;
    private final int maxWidth;
    private final SparseArray<MediaFormat> mediaFormats;
    private final int streamElementIndex;
    private final TrackInfo trackInfo;

    public SmoothStreamingChunkSource(ManifestFetcher<SmoothStreamingManifest> manifestFetcher, int streamElementIndex, int[] trackIndices, DataSource dataSource, FormatEvaluator formatEvaluator, long liveEdgeLatencyMs) {
        this(manifestFetcher, manifestFetcher.getManifest(), streamElementIndex, trackIndices, dataSource, formatEvaluator, liveEdgeLatencyMs);
    }

    public SmoothStreamingChunkSource(SmoothStreamingManifest manifest, int streamElementIndex, int[] trackIndices, DataSource dataSource, FormatEvaluator formatEvaluator) {
        this(null, manifest, streamElementIndex, trackIndices, dataSource, formatEvaluator, 0L);
    }

    private SmoothStreamingChunkSource(ManifestFetcher<SmoothStreamingManifest> manifestFetcher, SmoothStreamingManifest initialManifest, int streamElementIndex, int[] trackIndices, DataSource dataSource, FormatEvaluator formatEvaluator, long liveEdgeLatencyMs) {
        this.manifestFetcher = manifestFetcher;
        this.streamElementIndex = streamElementIndex;
        this.currentManifest = initialManifest;
        this.dataSource = dataSource;
        this.formatEvaluator = formatEvaluator;
        this.liveEdgeLatencyUs = 1000 * liveEdgeLatencyMs;
        SmoothStreamingManifest.StreamElement streamElement = getElement(initialManifest);
        this.trackInfo = new TrackInfo(streamElement.tracks[0].format.mimeType, initialManifest.durationUs);
        this.evaluation = new FormatEvaluator.Evaluation();
        TrackEncryptionBox[] trackEncryptionBoxes = null;
        SmoothStreamingManifest.ProtectionElement protectionElement = initialManifest.protectionElement;
        if (protectionElement != null) {
            byte[] keyId = getKeyId(protectionElement.data);
            trackEncryptionBoxes = new TrackEncryptionBox[]{new TrackEncryptionBox(true, 8, keyId)};
            DrmInitData.Mapped drmInitData = new DrmInitData.Mapped(MimeTypes.VIDEO_MP4);
            drmInitData.put(protectionElement.uuid, protectionElement.data);
            this.drmInitData = drmInitData;
        } else {
            this.drmInitData = null;
        }
        int trackCount = trackIndices != null ? trackIndices.length : streamElement.tracks.length;
        this.formats = new Format[trackCount];
        this.extractorWrappers = new SparseArray<>();
        this.mediaFormats = new SparseArray<>();
        int maxWidth = 0;
        int maxHeight = 0;
        for (int i = 0; i < trackCount; i++) {
            int trackIndex = trackIndices != null ? trackIndices[i] : i;
            this.formats[i] = streamElement.tracks[trackIndex].format;
            maxWidth = Math.max(maxWidth, this.formats[i].width);
            maxHeight = Math.max(maxHeight, this.formats[i].height);
            MediaFormat mediaFormat = getMediaFormat(streamElement, trackIndex);
            int trackType = streamElement.type == 1 ? Track.TYPE_VIDEO : Track.TYPE_AUDIO;
            FragmentedMp4Extractor extractor = new FragmentedMp4Extractor(1);
            extractor.setTrack(new Track(trackIndex, trackType, streamElement.timescale, initialManifest.durationUs, mediaFormat, trackEncryptionBoxes, trackType == Track.TYPE_VIDEO ? 4 : -1));
            this.extractorWrappers.put(trackIndex, new ChunkExtractorWrapper(extractor));
            this.mediaFormats.put(trackIndex, mediaFormat);
        }
        this.maxWidth = maxWidth;
        this.maxHeight = maxHeight;
        Arrays.sort(this.formats, new Format.DecreasingBandwidthComparator());
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final void getMaxVideoDimensions(MediaFormat out) {
        if (this.trackInfo.mimeType.startsWith(MimeTypes.BASE_TYPE_VIDEO)) {
            out.setMaxVideoDimensions(this.maxWidth, this.maxHeight);
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final TrackInfo getTrackInfo() {
        return this.trackInfo;
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void enable() {
        this.fatalError = null;
        this.formatEvaluator.enable();
        if (this.manifestFetcher != null) {
            this.manifestFetcher.enable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void disable(List<? extends MediaChunk> queue) {
        this.formatEvaluator.disable();
        if (this.manifestFetcher != null) {
            this.manifestFetcher.disable();
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void continueBuffering(long playbackPositionUs) {
        if (this.manifestFetcher != null && this.currentManifest.isLive && this.fatalError == null) {
            SmoothStreamingManifest newManifest = this.manifestFetcher.getManifest();
            if (this.currentManifest != newManifest && newManifest != null) {
                SmoothStreamingManifest.StreamElement currentElement = getElement(this.currentManifest);
                int currentElementChunkCount = currentElement.chunkCount;
                SmoothStreamingManifest.StreamElement newElement = getElement(newManifest);
                if (currentElementChunkCount == 0 || newElement.chunkCount == 0) {
                    this.currentManifestChunkOffset += currentElementChunkCount;
                } else {
                    long currentElementEndTimeUs = currentElement.getStartTimeUs(currentElementChunkCount - 1) + currentElement.getChunkDurationUs(currentElementChunkCount - 1);
                    long newElementStartTimeUs = newElement.getStartTimeUs(0);
                    if (currentElementEndTimeUs <= newElementStartTimeUs) {
                        this.currentManifestChunkOffset += currentElementChunkCount;
                    } else {
                        this.currentManifestChunkOffset += currentElement.getChunkIndex(newElementStartTimeUs);
                    }
                }
                this.currentManifest = newManifest;
                this.finishedCurrentManifest = false;
            }
            if (this.finishedCurrentManifest && SystemClock.elapsedRealtime() > this.manifestFetcher.getManifestLoadStartTimestamp() + HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS) {
                this.manifestFetcher.requestRefresh();
            }
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public final void getChunkOperation(List<? extends MediaChunk> queue, long seekPositionUs, long playbackPositionUs, ChunkOperationHolder out) {
        int chunkIndex;
        if (this.fatalError != null) {
            out.chunk = null;
            return;
        }
        this.evaluation.queueSize = queue.size();
        this.formatEvaluator.evaluate(queue, playbackPositionUs, this.formats, this.evaluation);
        Format selectedFormat = this.evaluation.format;
        out.queueSize = this.evaluation.queueSize;
        if (selectedFormat == null) {
            out.chunk = null;
            return;
        }
        if (out.queueSize != queue.size() || out.chunk == null || !out.chunk.format.equals(selectedFormat)) {
            out.chunk = null;
            SmoothStreamingManifest.StreamElement streamElement = getElement(this.currentManifest);
            if (streamElement.chunkCount == 0) {
                this.finishedCurrentManifest = true;
                return;
            }
            if (queue.isEmpty()) {
                if (this.currentManifest.isLive) {
                    seekPositionUs = getLiveSeekPosition();
                }
                chunkIndex = streamElement.getChunkIndex(seekPositionUs);
            } else {
                MediaChunk previous = queue.get(out.queueSize - 1);
                chunkIndex = previous.isLastChunk ? -1 : (previous.chunkIndex + 1) - this.currentManifestChunkOffset;
            }
            if (this.currentManifest.isLive) {
                if (chunkIndex < 0) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                } else if (chunkIndex >= streamElement.chunkCount) {
                    this.finishedCurrentManifest = true;
                    return;
                } else if (chunkIndex == streamElement.chunkCount - 1) {
                    this.finishedCurrentManifest = true;
                }
            }
            if (chunkIndex != -1) {
                boolean isLastChunk = !this.currentManifest.isLive && chunkIndex == streamElement.chunkCount + (-1);
                long chunkStartTimeUs = streamElement.getStartTimeUs(chunkIndex);
                long chunkEndTimeUs = isLastChunk ? -1L : chunkStartTimeUs + streamElement.getChunkDurationUs(chunkIndex);
                int currentAbsoluteChunkIndex = chunkIndex + this.currentManifestChunkOffset;
                int trackIndex = getTrackIndex(selectedFormat);
                Uri uri = streamElement.buildRequestUri(trackIndex, chunkIndex);
                Chunk mediaChunk = newMediaChunk(selectedFormat, uri, null, this.extractorWrappers.get(trackIndex), this.drmInitData, this.dataSource, currentAbsoluteChunkIndex, isLastChunk, chunkStartTimeUs, chunkEndTimeUs, this.evaluation.trigger, this.mediaFormats.get(trackIndex));
                out.chunk = mediaChunk;
            }
        }
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void maybeThrowError() throws IOException {
        if (this.fatalError != null) {
            throw this.fatalError;
        }
        this.manifestFetcher.maybeThrowError();
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadCompleted(Chunk chunk) {
    }

    @Override // com.google.android.exoplayer.chunk.ChunkSource
    public void onChunkLoadError(Chunk chunk, Exception e) {
    }

    private long getLiveSeekPosition() {
        long liveEdgeTimestampUs = Long.MIN_VALUE;
        for (int i = 0; i < this.currentManifest.streamElements.length; i++) {
            SmoothStreamingManifest.StreamElement streamElement = this.currentManifest.streamElements[i];
            if (streamElement.chunkCount > 0) {
                long elementLiveEdgeTimestampUs = streamElement.getStartTimeUs(streamElement.chunkCount - 1) + streamElement.getChunkDurationUs(streamElement.chunkCount - 1);
                liveEdgeTimestampUs = Math.max(liveEdgeTimestampUs, elementLiveEdgeTimestampUs);
            }
        }
        return liveEdgeTimestampUs - this.liveEdgeLatencyUs;
    }

    private SmoothStreamingManifest.StreamElement getElement(SmoothStreamingManifest manifest) {
        return manifest.streamElements[this.streamElementIndex];
    }

    private int getTrackIndex(Format format) {
        SmoothStreamingManifest.TrackElement[] tracks = this.currentManifest.streamElements[this.streamElementIndex].tracks;
        for (int i = 0; i < tracks.length; i++) {
            if (tracks[i].format.equals(format)) {
                return i;
            }
        }
        throw new IllegalStateException("Invalid format: " + format);
    }

    private static MediaFormat getMediaFormat(SmoothStreamingManifest.StreamElement streamElement, int trackIndex) {
        List<byte[]> csd;
        SmoothStreamingManifest.TrackElement trackElement = streamElement.tracks[trackIndex];
        Format trackFormat = trackElement.format;
        String mimeType = trackFormat.mimeType;
        if (streamElement.type == 1) {
            MediaFormat format = MediaFormat.createVideoFormat(mimeType, -1, trackFormat.width, trackFormat.height, Arrays.asList(trackElement.csd));
            format.setMaxVideoDimensions(streamElement.maxWidth, streamElement.maxHeight);
            return format;
        }
        if (streamElement.type == 0) {
            if (trackElement.csd != null) {
                csd = Arrays.asList(trackElement.csd);
            } else {
                csd = Collections.singletonList(CodecSpecificDataUtil.buildAacAudioSpecificConfig(trackFormat.audioSamplingRate, trackFormat.numChannels));
            }
            MediaFormat format2 = MediaFormat.createAudioFormat(mimeType, -1, trackFormat.numChannels, trackFormat.audioSamplingRate, csd);
            return format2;
        }
        if (streamElement.type == 2) {
            MediaFormat format3 = MediaFormat.createTextFormat(trackFormat.mimeType);
            return format3;
        }
        return null;
    }

    private static MediaChunk newMediaChunk(Format formatInfo, Uri uri, String cacheKey, ChunkExtractorWrapper extractorWrapper, DrmInitData drmInitData, DataSource dataSource, int chunkIndex, boolean isLast, long chunkStartTimeUs, long chunkEndTimeUs, int trigger, MediaFormat mediaFormat) {
        DataSpec dataSpec = new DataSpec(uri, 0L, -1L, cacheKey);
        return new ContainerMediaChunk(dataSource, dataSpec, trigger, formatInfo, chunkStartTimeUs, chunkEndTimeUs, chunkIndex, isLast, chunkStartTimeUs, extractorWrapper, mediaFormat, drmInitData, true);
    }

    private static byte[] getKeyId(byte[] initData) {
        StringBuilder initDataStringBuilder = new StringBuilder();
        for (int i = 0; i < initData.length; i += 2) {
            initDataStringBuilder.append((char) initData[i]);
        }
        String initDataString = initDataStringBuilder.toString();
        String keyIdString = initDataString.substring(initDataString.indexOf("<KID>") + 5, initDataString.indexOf("</KID>"));
        byte[] keyId = Base64.decode(keyIdString, 0);
        swap(keyId, 0, 3);
        swap(keyId, 1, 2);
        swap(keyId, 4, 5);
        swap(keyId, 6, 7);
        return keyId;
    }

    private static void swap(byte[] data, int firstPosition, int secondPosition) {
        byte temp = data[firstPosition];
        data[firstPosition] = data[secondPosition];
        data[secondPosition] = temp;
    }
}
