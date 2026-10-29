package com.google.android.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.chunk.BaseChunkSampleSourceEventListener;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.DataChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer.extractor.ts.TsExtractor;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.HttpDataSource;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class HlsChunkSource {
    private static final String AAC_FILE_EXTENSION = ".aac";
    public static final int ADAPTIVE_MODE_ABRUPT = 3;
    public static final int ADAPTIVE_MODE_NONE = 0;
    public static final int ADAPTIVE_MODE_SPLICE = 1;
    private static final float BANDWIDTH_FRACTION = 0.8f;
    public static final long DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS = 20000;
    public static final long DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS = 5000;
    public static final long DEFAULT_PLAYLIST_BLACKLIST_MS = 60000;
    private static final String TAG = "HlsChunkSource";
    private final int adaptiveMode;
    private final AudioCapabilities audioCapabilities;
    private final BandwidthMeter bandwidthMeter;
    private final String baseUri;
    private final DataSource dataSource;
    private long durationUs;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private boolean live;
    private final long maxBufferDurationToSwitchDownUs;
    private final int maxHeight;
    private final int maxWidth;
    private final long minBufferDurationToSwitchUpUs;
    private final HlsPlaylistParser playlistParser;
    private byte[] scratchSpace;
    private int selectedVariantIndex;
    private final long[] variantBlacklistTimes;
    private final long[] variantLastPlaylistLoadTimesMs;
    private final HlsMediaPlaylist[] variantPlaylists;
    private final Variant[] variants;

    public interface EventListener extends BaseChunkSampleSourceEventListener {
    }

    public HlsChunkSource(DataSource dataSource, String playlistUrl, HlsPlaylist playlist, BandwidthMeter bandwidthMeter, int[] variantIndices, int adaptiveMode, AudioCapabilities audioCapabilities) {
        this(dataSource, playlistUrl, playlist, bandwidthMeter, variantIndices, adaptiveMode, DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS, audioCapabilities);
    }

    public HlsChunkSource(DataSource dataSource, String playlistUrl, HlsPlaylist playlist, BandwidthMeter bandwidthMeter, int[] variantIndices, int adaptiveMode, long minBufferDurationToSwitchUpMs, long maxBufferDurationToSwitchDownMs, AudioCapabilities audioCapabilities) {
        this.dataSource = dataSource;
        this.bandwidthMeter = bandwidthMeter;
        this.adaptiveMode = adaptiveMode;
        this.audioCapabilities = audioCapabilities;
        this.minBufferDurationToSwitchUpUs = 1000 * minBufferDurationToSwitchUpMs;
        this.maxBufferDurationToSwitchDownUs = 1000 * maxBufferDurationToSwitchDownMs;
        this.baseUri = playlist.baseUri;
        this.playlistParser = new HlsPlaylistParser();
        if (playlist.type == 1) {
            this.variants = new Variant[]{new Variant(0, playlistUrl, 0, null, -1, -1)};
            this.variantPlaylists = new HlsMediaPlaylist[1];
            this.variantLastPlaylistLoadTimesMs = new long[1];
            this.variantBlacklistTimes = new long[1];
            setMediaPlaylist(0, (HlsMediaPlaylist) playlist);
            this.maxWidth = -1;
            this.maxHeight = -1;
            return;
        }
        List<Variant> masterPlaylistVariants = ((HlsMasterPlaylist) playlist).variants;
        this.variants = buildOrderedVariants(masterPlaylistVariants, variantIndices);
        this.variantPlaylists = new HlsMediaPlaylist[this.variants.length];
        this.variantLastPlaylistLoadTimesMs = new long[this.variants.length];
        this.variantBlacklistTimes = new long[this.variants.length];
        int maxWidth = -1;
        int maxHeight = -1;
        int minOriginalVariantIndex = Integer.MAX_VALUE;
        for (int i = 0; i < this.variants.length; i++) {
            int originalVariantIndex = masterPlaylistVariants.indexOf(this.variants[i]);
            if (originalVariantIndex < minOriginalVariantIndex) {
                minOriginalVariantIndex = originalVariantIndex;
                this.selectedVariantIndex = i;
            }
            Format variantFormat = this.variants[i].format;
            maxWidth = Math.max(variantFormat.width, maxWidth);
            maxHeight = Math.max(variantFormat.height, maxHeight);
        }
        if (this.variants.length <= 1 || adaptiveMode == 0) {
            this.maxWidth = -1;
            this.maxHeight = -1;
        } else {
            this.maxWidth = maxWidth <= 0 ? 1920 : maxWidth;
            this.maxHeight = maxHeight <= 0 ? 1080 : maxHeight;
        }
    }

    public long getDurationUs() {
        if (this.live) {
            return -1L;
        }
        return this.durationUs;
    }

    public void getMaxVideoDimensions(MediaFormat out) {
        if (this.maxWidth != -1 && this.maxHeight != -1) {
            out.setMaxVideoDimensions(this.maxWidth, this.maxHeight);
        }
    }

    public Chunk getChunkOperation(TsChunk previousTsChunk, long seekPositionUs, long playbackPositionUs) {
        int nextVariantIndex;
        boolean switchingVariantSpliced;
        int chunkMediaSequence;
        long startTimeUs;
        HlsExtractorWrapper extractorWrapper;
        if (this.adaptiveMode == 0) {
            nextVariantIndex = this.selectedVariantIndex;
            switchingVariantSpliced = false;
        } else {
            nextVariantIndex = getNextVariantIndex(previousTsChunk, playbackPositionUs);
            switchingVariantSpliced = (previousTsChunk == null || this.variants[nextVariantIndex].format.equals(previousTsChunk.format) || this.adaptiveMode != 1) ? false : true;
        }
        HlsMediaPlaylist mediaPlaylist = this.variantPlaylists[nextVariantIndex];
        if (mediaPlaylist == null) {
            return newMediaPlaylistChunk(nextVariantIndex);
        }
        this.selectedVariantIndex = nextVariantIndex;
        boolean liveDiscontinuity = false;
        if (this.live) {
            if (previousTsChunk == null) {
                chunkMediaSequence = getLiveStartChunkMediaSequence(nextVariantIndex);
            } else {
                chunkMediaSequence = switchingVariantSpliced ? previousTsChunk.chunkIndex : previousTsChunk.chunkIndex + 1;
                if (chunkMediaSequence < mediaPlaylist.mediaSequence) {
                    chunkMediaSequence = getLiveStartChunkMediaSequence(nextVariantIndex);
                    liveDiscontinuity = true;
                }
            }
        } else if (previousTsChunk == null) {
            chunkMediaSequence = Util.binarySearchFloor((List<? extends Comparable<? super Long>>) mediaPlaylist.segments, Long.valueOf(seekPositionUs), true, true) + mediaPlaylist.mediaSequence;
        } else {
            chunkMediaSequence = switchingVariantSpliced ? previousTsChunk.chunkIndex : previousTsChunk.chunkIndex + 1;
        }
        int chunkIndex = chunkMediaSequence - mediaPlaylist.mediaSequence;
        if (chunkIndex >= mediaPlaylist.segments.size()) {
            if (mediaPlaylist.live && shouldRerequestMediaPlaylist(nextVariantIndex)) {
                return newMediaPlaylistChunk(nextVariantIndex);
            }
            return null;
        }
        HlsMediaPlaylist.Segment segment = mediaPlaylist.segments.get(chunkIndex);
        Uri chunkUri = UriUtil.resolveToUri(mediaPlaylist.baseUri, segment.url);
        if (segment.isEncrypted) {
            Uri keyUri = UriUtil.resolveToUri(mediaPlaylist.baseUri, segment.encryptionKeyUri);
            if (!keyUri.equals(this.encryptionKeyUri)) {
                return newEncryptionKeyChunk(keyUri, segment.encryptionIV, this.selectedVariantIndex);
            }
            if (!Util.areEqual(segment.encryptionIV, this.encryptionIvString)) {
                setEncryptionData(keyUri, segment.encryptionIV, this.encryptionKey);
            }
        } else {
            clearEncryptionData();
        }
        DataSpec dataSpec = new DataSpec(chunkUri, segment.byterangeOffset, segment.byterangeLength, null);
        if (this.live) {
            if (previousTsChunk == null) {
                startTimeUs = 0;
            } else if (switchingVariantSpliced) {
                startTimeUs = previousTsChunk.startTimeUs;
            } else {
                startTimeUs = previousTsChunk.endTimeUs;
            }
        } else {
            startTimeUs = segment.startTimeUs;
        }
        long endTimeUs = startTimeUs + ((long) (segment.durationSecs * 1000000.0d));
        boolean isLastChunk = !mediaPlaylist.live && chunkIndex == mediaPlaylist.segments.size() + (-1);
        Format format = this.variants[this.selectedVariantIndex].format;
        if (previousTsChunk == null || segment.discontinuity || !format.equals(previousTsChunk.format) || liveDiscontinuity) {
            Extractor extractor = chunkUri.getLastPathSegment().endsWith(AAC_FILE_EXTENSION) ? new AdtsExtractor(startTimeUs) : new TsExtractor(startTimeUs, this.audioCapabilities);
            extractorWrapper = new HlsExtractorWrapper(0, format, startTimeUs, extractor, switchingVariantSpliced);
        } else {
            extractorWrapper = previousTsChunk.extractorWrapper;
        }
        return new TsChunk(this.dataSource, dataSpec, 0, format, startTimeUs, endTimeUs, chunkMediaSequence, isLastChunk, extractorWrapper, this.encryptionKey, this.encryptionIv);
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof MediaPlaylistChunk) {
            MediaPlaylistChunk mediaPlaylistChunk = (MediaPlaylistChunk) chunk;
            this.scratchSpace = mediaPlaylistChunk.getDataHolder();
            setMediaPlaylist(mediaPlaylistChunk.variantIndex, mediaPlaylistChunk.getResult());
        } else if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.iv, encryptionKeyChunk.getResult());
        }
    }

    public boolean onChunkLoadError(Chunk chunk, IOException e) {
        int variantIndex;
        if (chunk.bytesLoaded() == 0 && (((chunk instanceof TsChunk) || (chunk instanceof MediaPlaylistChunk) || (chunk instanceof EncryptionKeyChunk)) && (e instanceof HttpDataSource.InvalidResponseCodeException))) {
            HttpDataSource.InvalidResponseCodeException responseCodeException = (HttpDataSource.InvalidResponseCodeException) e;
            int responseCode = responseCodeException.responseCode;
            if (responseCode == 404 || responseCode == 410) {
                if (chunk instanceof TsChunk) {
                    TsChunk tsChunk = (TsChunk) chunk;
                    variantIndex = getVariantIndex(tsChunk.format);
                } else if (chunk instanceof MediaPlaylistChunk) {
                    MediaPlaylistChunk playlistChunk = (MediaPlaylistChunk) chunk;
                    variantIndex = playlistChunk.variantIndex;
                } else {
                    EncryptionKeyChunk encryptionChunk = (EncryptionKeyChunk) chunk;
                    variantIndex = encryptionChunk.variantIndex;
                }
                boolean alreadyBlacklisted = this.variantBlacklistTimes[variantIndex] != 0;
                this.variantBlacklistTimes[variantIndex] = SystemClock.elapsedRealtime();
                if (alreadyBlacklisted) {
                    Log.w(TAG, "Already blacklisted variant (" + responseCode + "): " + chunk.dataSpec.uri);
                    return false;
                }
                if (!allVariantsBlacklisted()) {
                    Log.w(TAG, "Blacklisted variant (" + responseCode + "): " + chunk.dataSpec.uri);
                    return true;
                }
                Log.w(TAG, "Final variant not blacklisted (" + responseCode + "): " + chunk.dataSpec.uri);
                this.variantBlacklistTimes[variantIndex] = 0;
                return false;
            }
        }
        return false;
    }

    private int getNextVariantIndex(TsChunk previousTsChunk, long playbackPositionUs) {
        clearStaleBlacklistedVariants();
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) {
            return getVariantIndexForBandwidth(bitrateEstimate);
        }
        if (previousTsChunk == null) {
            return this.selectedVariantIndex;
        }
        if (bitrateEstimate == -1) {
            return this.selectedVariantIndex;
        }
        int idealIndex = getVariantIndexForBandwidth(bitrateEstimate);
        if (idealIndex == this.selectedVariantIndex) {
            return this.selectedVariantIndex;
        }
        long bufferedPositionUs = this.adaptiveMode == 1 ? previousTsChunk.startTimeUs : previousTsChunk.endTimeUs;
        long bufferedUs = bufferedPositionUs - playbackPositionUs;
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) {
            return idealIndex;
        }
        if (idealIndex <= this.selectedVariantIndex || bufferedUs >= this.maxBufferDurationToSwitchDownUs) {
            return (idealIndex >= this.selectedVariantIndex || bufferedUs <= this.minBufferDurationToSwitchUpUs) ? this.selectedVariantIndex : idealIndex;
        }
        return idealIndex;
    }

    private int getVariantIndexForBandwidth(long bitrateEstimate) {
        if (bitrateEstimate == -1) {
            bitrateEstimate = 0;
        }
        int effectiveBitrate = (int) (bitrateEstimate * 0.8f);
        int lowestQualityEnabledVariantIndex = -1;
        for (int i = 0; i < this.variants.length; i++) {
            if (this.variantBlacklistTimes[i] == 0) {
                if (this.variants[i].format.bitrate > effectiveBitrate) {
                    lowestQualityEnabledVariantIndex = i;
                } else {
                    return i;
                }
            }
        }
        Assertions.checkState(lowestQualityEnabledVariantIndex != -1);
        int i2 = lowestQualityEnabledVariantIndex;
        return i2;
    }

    private boolean shouldRerequestMediaPlaylist(int nextVariantIndex) {
        HlsMediaPlaylist mediaPlaylist = this.variantPlaylists[nextVariantIndex];
        long timeSinceLastMediaPlaylistLoadMs = SystemClock.elapsedRealtime() - this.variantLastPlaylistLoadTimesMs[nextVariantIndex];
        return timeSinceLastMediaPlaylistLoadMs >= ((long) ((mediaPlaylist.targetDurationSecs * 1000) / 2));
    }

    private int getLiveStartChunkMediaSequence(int variantIndex) {
        HlsMediaPlaylist mediaPlaylist = this.variantPlaylists[variantIndex];
        int chunkIndex = mediaPlaylist.segments.size() > 3 ? mediaPlaylist.segments.size() - 3 : 0;
        return mediaPlaylist.mediaSequence + chunkIndex;
    }

    private MediaPlaylistChunk newMediaPlaylistChunk(int variantIndex) {
        Uri mediaPlaylistUri = UriUtil.resolveToUri(this.baseUri, this.variants[variantIndex].url);
        DataSpec dataSpec = new DataSpec(mediaPlaylistUri, 0L, -1L, null, 1);
        return new MediaPlaylistChunk(this.dataSource, dataSpec, this.scratchSpace, this.playlistParser, variantIndex, mediaPlaylistUri.toString());
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri keyUri, String iv, int variantIndex) {
        DataSpec dataSpec = new DataSpec(keyUri, 0L, -1L, null, 1);
        return new EncryptionKeyChunk(this.dataSource, dataSpec, this.scratchSpace, iv, variantIndex);
    }

    private void setEncryptionData(Uri keyUri, String iv, byte[] secretKey) {
        String trimmedIv;
        if (iv.toLowerCase(Locale.getDefault()).startsWith("0x")) {
            trimmedIv = iv.substring(2);
        } else {
            trimmedIv = iv;
        }
        byte[] ivData = new BigInteger(trimmedIv, 16).toByteArray();
        byte[] ivDataWithPadding = new byte[16];
        int offset = ivData.length > 16 ? ivData.length - 16 : 0;
        System.arraycopy(ivData, offset, ivDataWithPadding, (ivDataWithPadding.length - ivData.length) + offset, ivData.length - offset);
        this.encryptionKeyUri = keyUri;
        this.encryptionKey = secretKey;
        this.encryptionIvString = iv;
        this.encryptionIv = ivDataWithPadding;
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private void setMediaPlaylist(int variantIndex, HlsMediaPlaylist mediaPlaylist) {
        this.variantLastPlaylistLoadTimesMs[variantIndex] = SystemClock.elapsedRealtime();
        this.variantPlaylists[variantIndex] = mediaPlaylist;
        this.live |= mediaPlaylist.live;
        this.durationUs = mediaPlaylist.durationUs;
    }

    private static Variant[] buildOrderedVariants(List<Variant> originalVariants, int[] originalVariantIndices) {
        ArrayList<Variant> enabledVariantList = new ArrayList<>();
        if (originalVariantIndices != null) {
            for (int i : originalVariantIndices) {
                enabledVariantList.add(originalVariants.get(i));
            }
        } else {
            enabledVariantList.addAll(originalVariants);
        }
        ArrayList<Variant> definiteVideoVariants = new ArrayList<>();
        ArrayList<Variant> definiteAudioOnlyVariants = new ArrayList<>();
        for (int i2 = 0; i2 < enabledVariantList.size(); i2++) {
            Variant variant = enabledVariantList.get(i2);
            if (variant.format.height > 0 || variantHasExplicitCodecWithPrefix(variant, "avc")) {
                definiteVideoVariants.add(variant);
            } else if (variantHasExplicitCodecWithPrefix(variant, "mp4a")) {
                definiteAudioOnlyVariants.add(variant);
            }
        }
        if (!definiteVideoVariants.isEmpty()) {
            enabledVariantList = definiteVideoVariants;
        } else if (definiteAudioOnlyVariants.size() < enabledVariantList.size()) {
            enabledVariantList.removeAll(definiteAudioOnlyVariants);
        }
        Variant[] enabledVariants = new Variant[enabledVariantList.size()];
        enabledVariantList.toArray(enabledVariants);
        Arrays.sort(enabledVariants, new Comparator<Variant>() { // from class: com.google.android.exoplayer.hls.HlsChunkSource.1
            private final Comparator<Format> formatComparator = new Format.DecreasingBandwidthComparator();

            @Override // java.util.Comparator
            public int compare(Variant first, Variant second) {
                return this.formatComparator.compare(first.format, second.format);
            }
        });
        return enabledVariants;
    }

    private static boolean variantHasExplicitCodecWithPrefix(Variant variant, String prefix) {
        String codecs = variant.format.codecs;
        if (TextUtils.isEmpty(codecs)) {
            return false;
        }
        String[] codecArray = codecs.split("(\\s*,\\s*)|(\\s*$)");
        for (String str : codecArray) {
            if (str.startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }

    private boolean allVariantsBlacklisted() {
        for (int i = 0; i < this.variantBlacklistTimes.length; i++) {
            if (this.variantBlacklistTimes[i] == 0) {
                return false;
            }
        }
        return true;
    }

    private void clearStaleBlacklistedVariants() {
        long currentTime = SystemClock.elapsedRealtime();
        for (int i = 0; i < this.variantBlacklistTimes.length; i++) {
            if (this.variantBlacklistTimes[i] != 0 && currentTime - this.variantBlacklistTimes[i] > DEFAULT_PLAYLIST_BLACKLIST_MS) {
                this.variantBlacklistTimes[i] = 0;
            }
        }
    }

    private int getVariantIndex(Format format) {
        for (int i = 0; i < this.variants.length; i++) {
            if (this.variants[i].format.equals(format)) {
                return i;
            }
        }
        throw new IllegalStateException("Invalid format: " + format);
    }

    private static class MediaPlaylistChunk extends DataChunk {
        private final HlsPlaylistParser playlistParser;
        private final String playlistUrl;
        private HlsMediaPlaylist result;
        public final int variantIndex;

        public MediaPlaylistChunk(DataSource dataSource, DataSpec dataSpec, byte[] scratchSpace, HlsPlaylistParser playlistParser, int variantIndex, String playlistUrl) {
            super(dataSource, dataSpec, 4, 0, null, scratchSpace);
            this.variantIndex = variantIndex;
            this.playlistParser = playlistParser;
            this.playlistUrl = playlistUrl;
        }

        @Override // com.google.android.exoplayer.chunk.DataChunk
        protected void consume(byte[] data, int limit) throws IOException {
            this.result = (HlsMediaPlaylist) this.playlistParser.parse(this.playlistUrl, (InputStream) new ByteArrayInputStream(data, 0, limit));
        }

        public HlsMediaPlaylist getResult() {
            return this.result;
        }
    }

    private static class EncryptionKeyChunk extends DataChunk {
        public final String iv;
        private byte[] result;
        public final int variantIndex;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, byte[] scratchSpace, String iv, int variantIndex) {
            super(dataSource, dataSpec, 3, 0, null, scratchSpace);
            this.iv = iv;
            this.variantIndex = variantIndex;
        }

        @Override // com.google.android.exoplayer.chunk.DataChunk
        protected void consume(byte[] data, int limit) throws IOException {
            this.result = Arrays.copyOf(data, limit);
        }

        public byte[] getResult() {
            return this.result;
        }
    }
}
