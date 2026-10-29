package com.google.android.exoplayer.dash.mpd;

import android.text.TextUtils;
import android.util.Base64;
import com.amazon.ags.constants.NativeCallKeys;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.upstream.UriLoadable;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.mopub.mobileads.VastIconXmlManager;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes2.dex */
public class MediaPresentationDescriptionParser extends DefaultHandler implements UriLoadable.Parser<MediaPresentationDescription> {
    private static final Pattern FRAME_RATE_PATTERN = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private final String contentId;
    private final XmlPullParserFactory xmlParserFactory;

    public MediaPresentationDescriptionParser() {
        this(null);
    }

    public MediaPresentationDescriptionParser(String contentId) {
        this.contentId = contentId;
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer.upstream.UriLoadable.Parser
    public MediaPresentationDescription parse(String connectionUrl, InputStream inputStream) throws IOException {
        try {
            XmlPullParser xpp = this.xmlParserFactory.newPullParser();
            xpp.setInput(inputStream, null);
            int eventType = xpp.next();
            if (eventType != 2 || !"MPD".equals(xpp.getName())) {
                throw new ParserException("inputStream does not contain a valid media presentation description");
            }
            return parseMediaPresentationDescription(xpp, connectionUrl);
        } catch (ParseException e) {
            throw new ParserException(e);
        } catch (XmlPullParserException e2) {
            throw new ParserException(e2);
        }
    }

    protected MediaPresentationDescription parseMediaPresentationDescription(XmlPullParser xpp, String baseUrl) throws XmlPullParserException, IOException, ParseException {
        long availabilityStartTime = parseDateTime(xpp, "availabilityStartTime", -1L);
        long durationMs = parseDuration(xpp, "mediaPresentationDuration", -1L);
        long minBufferTimeMs = parseDuration(xpp, "minBufferTime", -1L);
        String typeString = xpp.getAttributeValue(null, "type");
        boolean dynamic = typeString != null ? typeString.equals("dynamic") : false;
        long minUpdateTimeMs = dynamic ? parseDuration(xpp, "minimumUpdatePeriod", -1L) : -1L;
        long timeShiftBufferDepthMs = dynamic ? parseDuration(xpp, "timeShiftBufferDepth", -1L) : -1L;
        UtcTimingElement utcTiming = null;
        String location = null;
        List<Period> periods = new ArrayList<>();
        do {
            xpp.next();
            if (isStartTag(xpp, "BaseURL")) {
                baseUrl = parseBaseUrl(xpp, baseUrl);
            } else if (isStartTag(xpp, "UTCTiming")) {
                utcTiming = parseUtcTiming(xpp);
            } else if (isStartTag(xpp, "Period")) {
                periods.add(parsePeriod(xpp, baseUrl, durationMs));
            } else if (isStartTag(xpp, HttpRequest.HEADER_LOCATION)) {
                location = xpp.nextText();
            }
        } while (!isEndTag(xpp, "MPD"));
        return buildMediaPresentationDescription(availabilityStartTime, durationMs, minBufferTimeMs, dynamic, minUpdateTimeMs, timeShiftBufferDepthMs, utcTiming, location, periods);
    }

    protected MediaPresentationDescription buildMediaPresentationDescription(long availabilityStartTime, long durationMs, long minBufferTimeMs, boolean dynamic, long minUpdateTimeMs, long timeShiftBufferDepthMs, UtcTimingElement utcTiming, String location, List<Period> periods) {
        return new MediaPresentationDescription(availabilityStartTime, durationMs, minBufferTimeMs, dynamic, minUpdateTimeMs, timeShiftBufferDepthMs, utcTiming, location, periods);
    }

    protected UtcTimingElement parseUtcTiming(XmlPullParser xpp) {
        String schemeIdUri = xpp.getAttributeValue(null, "schemeIdUri");
        String value = xpp.getAttributeValue(null, NativeCallKeys.VALUE);
        return buildUtcTimingElement(schemeIdUri, value);
    }

    protected UtcTimingElement buildUtcTimingElement(String schemeIdUri, String value) {
        return new UtcTimingElement(schemeIdUri, value);
    }

    protected Period parsePeriod(XmlPullParser xpp, String baseUrl, long mpdDurationMs) throws XmlPullParserException, IOException {
        String id = xpp.getAttributeValue(null, AnalyticsEvent.EVENT_ID);
        long startMs = parseDuration(xpp, "start", 0L);
        long durationMs = parseDuration(xpp, VastIconXmlManager.DURATION, mpdDurationMs);
        SegmentBase segmentBase = null;
        List<AdaptationSet> adaptationSets = new ArrayList<>();
        do {
            xpp.next();
            if (isStartTag(xpp, "BaseURL")) {
                baseUrl = parseBaseUrl(xpp, baseUrl);
            } else if (isStartTag(xpp, "AdaptationSet")) {
                adaptationSets.add(parseAdaptationSet(xpp, baseUrl, startMs, durationMs, segmentBase));
            } else if (isStartTag(xpp, "SegmentBase")) {
                segmentBase = parseSegmentBase(xpp, baseUrl, null);
            } else if (isStartTag(xpp, "SegmentList")) {
                segmentBase = parseSegmentList(xpp, baseUrl, null, durationMs);
            } else if (isStartTag(xpp, "SegmentTemplate")) {
                segmentBase = parseSegmentTemplate(xpp, baseUrl, null, durationMs);
            }
        } while (!isEndTag(xpp, "Period"));
        return buildPeriod(id, startMs, durationMs, adaptationSets);
    }

    protected Period buildPeriod(String id, long startMs, long durationMs, List<AdaptationSet> adaptationSets) {
        return new Period(id, startMs, durationMs, adaptationSets);
    }

    protected AdaptationSet parseAdaptationSet(XmlPullParser xpp, String baseUrl, long periodStartMs, long periodDurationMs, SegmentBase segmentBase) throws XmlPullParserException, IOException {
        int id = parseInt(xpp, AnalyticsEvent.EVENT_ID, -1);
        String mimeType = xpp.getAttributeValue(null, "mimeType");
        String language = xpp.getAttributeValue(null, "lang");
        int contentType = parseAdaptationSetType(xpp.getAttributeValue(null, "contentType"));
        if (contentType == -1) {
            contentType = parseAdaptationSetTypeFromMimeType(xpp.getAttributeValue(null, "mimeType"));
        }
        ContentProtectionsBuilder contentProtectionsBuilder = new ContentProtectionsBuilder();
        List<Representation> representations = new ArrayList<>();
        do {
            xpp.next();
            if (isStartTag(xpp, "BaseURL")) {
                baseUrl = parseBaseUrl(xpp, baseUrl);
            } else if (isStartTag(xpp, "ContentProtection")) {
                contentProtectionsBuilder.addAdaptationSetProtection(parseContentProtection(xpp));
            } else if (isStartTag(xpp, "ContentComponent")) {
                language = checkLanguageConsistency(language, xpp.getAttributeValue(null, "lang"));
                contentType = checkAdaptationSetTypeConsistency(contentType, parseAdaptationSetType(xpp.getAttributeValue(null, "contentType")));
            } else if (isStartTag(xpp, "Representation")) {
                Representation representation = parseRepresentation(xpp, baseUrl, periodStartMs, periodDurationMs, mimeType, language, segmentBase, contentProtectionsBuilder);
                contentProtectionsBuilder.endRepresentation();
                contentType = checkAdaptationSetTypeConsistency(contentType, parseAdaptationSetTypeFromMimeType(representation.format.mimeType));
                representations.add(representation);
            } else if (isStartTag(xpp, "SegmentBase")) {
                segmentBase = parseSegmentBase(xpp, baseUrl, (SegmentBase.SingleSegmentBase) segmentBase);
            } else if (isStartTag(xpp, "SegmentList")) {
                segmentBase = parseSegmentList(xpp, baseUrl, (SegmentBase.SegmentList) segmentBase, periodDurationMs);
            } else if (isStartTag(xpp, "SegmentTemplate")) {
                segmentBase = parseSegmentTemplate(xpp, baseUrl, (SegmentBase.SegmentTemplate) segmentBase, periodDurationMs);
            } else if (isStartTag(xpp)) {
                parseAdaptationSetChild(xpp);
            }
        } while (!isEndTag(xpp, "AdaptationSet"));
        return buildAdaptationSet(id, contentType, representations, contentProtectionsBuilder.build());
    }

    protected AdaptationSet buildAdaptationSet(int id, int contentType, List<Representation> representations, List<ContentProtection> contentProtections) {
        return new AdaptationSet(id, contentType, representations, contentProtections);
    }

    protected int parseAdaptationSetType(String contentType) {
        if (TextUtils.isEmpty(contentType)) {
            return -1;
        }
        if (MimeTypes.BASE_TYPE_AUDIO.equals(contentType)) {
            return 1;
        }
        if (MimeTypes.BASE_TYPE_VIDEO.equals(contentType)) {
            return 0;
        }
        return MimeTypes.BASE_TYPE_TEXT.equals(contentType) ? 2 : -1;
    }

    protected int parseAdaptationSetTypeFromMimeType(String mimeType) {
        if (TextUtils.isEmpty(mimeType)) {
            return -1;
        }
        if (MimeTypes.isAudio(mimeType)) {
            return 1;
        }
        if (MimeTypes.isVideo(mimeType)) {
            return 0;
        }
        return (MimeTypes.isText(mimeType) || MimeTypes.isTtml(mimeType)) ? 2 : -1;
    }

    protected ContentProtection parseContentProtection(XmlPullParser xpp) throws XmlPullParserException, IOException {
        String schemeIdUri = xpp.getAttributeValue(null, "schemeIdUri");
        UUID uuid = null;
        byte[] psshAtom = null;
        do {
            xpp.next();
            if (isStartTag(xpp, "cenc:pssh") && xpp.next() == 4 && (uuid = PsshAtomUtil.parseUuid((psshAtom = Base64.decode(xpp.getText(), 0)))) == null) {
                throw new ParserException("Invalid pssh atom in cenc:pssh element");
            }
        } while (!isEndTag(xpp, "ContentProtection"));
        return buildContentProtection(schemeIdUri, uuid, psshAtom);
    }

    protected ContentProtection buildContentProtection(String schemeIdUri, UUID uuid, byte[] data) {
        return new ContentProtection(schemeIdUri, uuid, data);
    }

    protected void parseAdaptationSetChild(XmlPullParser xpp) throws XmlPullParserException, IOException {
    }

    protected Representation parseRepresentation(XmlPullParser xpp, String baseUrl, long periodStartMs, long periodDurationMs, String mimeType, String language, SegmentBase segmentBase, ContentProtectionsBuilder contentProtectionsBuilder) throws XmlPullParserException, IOException {
        String id = xpp.getAttributeValue(null, AnalyticsEvent.EVENT_ID);
        int bandwidth = parseInt(xpp, "bandwidth");
        int audioSamplingRate = parseInt(xpp, "audioSamplingRate");
        int width = parseInt(xpp, "width");
        int height = parseInt(xpp, "height");
        float frameRate = -1.0f;
        String frameRateAttribute = xpp.getAttributeValue(null, "frameRate");
        if (frameRateAttribute != null) {
            Matcher frameRateMatcher = FRAME_RATE_PATTERN.matcher(frameRateAttribute);
            if (frameRateMatcher.matches()) {
                int numerator = Integer.parseInt(frameRateMatcher.group(1));
                String denominatorString = frameRateMatcher.group(2);
                frameRate = !TextUtils.isEmpty(denominatorString) ? numerator / Integer.parseInt(denominatorString) : numerator;
            }
        }
        String mimeType2 = parseString(xpp, "mimeType", mimeType);
        String codecs = parseString(xpp, "codecs", null);
        int numChannels = -1;
        do {
            xpp.next();
            if (isStartTag(xpp, "BaseURL")) {
                baseUrl = parseBaseUrl(xpp, baseUrl);
            } else if (isStartTag(xpp, "AudioChannelConfiguration")) {
                numChannels = Integer.parseInt(xpp.getAttributeValue(null, NativeCallKeys.VALUE));
            } else if (isStartTag(xpp, "SegmentBase")) {
                segmentBase = parseSegmentBase(xpp, baseUrl, (SegmentBase.SingleSegmentBase) segmentBase);
            } else if (isStartTag(xpp, "SegmentList")) {
                segmentBase = parseSegmentList(xpp, baseUrl, (SegmentBase.SegmentList) segmentBase, periodDurationMs);
            } else if (isStartTag(xpp, "SegmentTemplate")) {
                segmentBase = parseSegmentTemplate(xpp, baseUrl, (SegmentBase.SegmentTemplate) segmentBase, periodDurationMs);
            } else if (isStartTag(xpp, "ContentProtection")) {
                contentProtectionsBuilder.addRepresentationProtection(parseContentProtection(xpp));
            }
        } while (!isEndTag(xpp, "Representation"));
        Format format = buildFormat(id, mimeType2, width, height, frameRate, numChannels, audioSamplingRate, bandwidth, language, codecs);
        return buildRepresentation(periodStartMs, periodDurationMs, this.contentId, -1, format, segmentBase != null ? segmentBase : new SegmentBase.SingleSegmentBase(baseUrl));
    }

    protected Format buildFormat(String id, String mimeType, int width, int height, float frameRate, int numChannels, int audioSamplingRate, int bandwidth, String language, String codecs) {
        return new Format(id, mimeType, width, height, frameRate, numChannels, audioSamplingRate, bandwidth, language, codecs);
    }

    protected Representation buildRepresentation(long periodStartMs, long periodDurationMs, String contentId, int revisionId, Format format, SegmentBase segmentBase) {
        return Representation.newInstance(periodStartMs, periodDurationMs, contentId, revisionId, format, segmentBase);
    }

    protected SegmentBase.SingleSegmentBase parseSegmentBase(XmlPullParser xpp, String baseUrl, SegmentBase.SingleSegmentBase parent) throws XmlPullParserException, IOException {
        long timescale = parseLong(xpp, "timescale", parent != null ? parent.timescale : 1L);
        long presentationTimeOffset = parseLong(xpp, "presentationTimeOffset", parent != null ? parent.presentationTimeOffset : 0L);
        long indexStart = parent != null ? parent.indexStart : 0L;
        long indexLength = parent != null ? parent.indexLength : -1L;
        String indexRangeText = xpp.getAttributeValue(null, "indexRange");
        if (indexRangeText != null) {
            String[] indexRange = indexRangeText.split("-");
            indexStart = Long.parseLong(indexRange[0]);
            indexLength = (Long.parseLong(indexRange[1]) - indexStart) + 1;
        }
        RangedUri initialization = parent != null ? parent.initialization : null;
        do {
            xpp.next();
            if (isStartTag(xpp, "Initialization")) {
                initialization = parseInitialization(xpp, baseUrl);
            }
        } while (!isEndTag(xpp, "SegmentBase"));
        return buildSingleSegmentBase(initialization, timescale, presentationTimeOffset, baseUrl, indexStart, indexLength);
    }

    protected SegmentBase.SingleSegmentBase buildSingleSegmentBase(RangedUri initialization, long timescale, long presentationTimeOffset, String baseUrl, long indexStart, long indexLength) {
        return new SegmentBase.SingleSegmentBase(initialization, timescale, presentationTimeOffset, baseUrl, indexStart, indexLength);
    }

    protected SegmentBase.SegmentList parseSegmentList(XmlPullParser xpp, String baseUrl, SegmentBase.SegmentList parent, long periodDurationMs) throws XmlPullParserException, IOException {
        long timescale = parseLong(xpp, "timescale", parent != null ? parent.timescale : 1L);
        long presentationTimeOffset = parseLong(xpp, "presentationTimeOffset", parent != null ? parent.presentationTimeOffset : 0L);
        long duration = parseLong(xpp, VastIconXmlManager.DURATION, parent != null ? parent.duration : -1L);
        int startNumber = parseInt(xpp, "startNumber", parent != null ? parent.startNumber : 1);
        RangedUri initialization = null;
        List<SegmentBase.SegmentTimelineElement> timeline = null;
        List<RangedUri> segments = null;
        do {
            xpp.next();
            if (isStartTag(xpp, "Initialization")) {
                initialization = parseInitialization(xpp, baseUrl);
            } else if (isStartTag(xpp, "SegmentTimeline")) {
                timeline = parseSegmentTimeline(xpp);
            } else if (isStartTag(xpp, "SegmentURL")) {
                if (segments == null) {
                    segments = new ArrayList<>();
                }
                segments.add(parseSegmentUrl(xpp, baseUrl));
            }
        } while (!isEndTag(xpp, "SegmentList"));
        if (parent != null) {
            if (initialization == null) {
                initialization = parent.initialization;
            }
            if (timeline == null) {
                timeline = parent.segmentTimeline;
            }
            if (segments == null) {
                segments = parent.mediaSegments;
            }
        }
        return buildSegmentList(initialization, timescale, presentationTimeOffset, periodDurationMs, startNumber, duration, timeline, segments);
    }

    protected SegmentBase.SegmentList buildSegmentList(RangedUri initialization, long timescale, long presentationTimeOffset, long periodDurationMs, int startNumber, long duration, List<SegmentBase.SegmentTimelineElement> timeline, List<RangedUri> segments) {
        return new SegmentBase.SegmentList(initialization, timescale, presentationTimeOffset, periodDurationMs, startNumber, duration, timeline, segments);
    }

    protected SegmentBase.SegmentTemplate parseSegmentTemplate(XmlPullParser xpp, String baseUrl, SegmentBase.SegmentTemplate parent, long periodDurationMs) throws XmlPullParserException, IOException {
        long timescale = parseLong(xpp, "timescale", parent != null ? parent.timescale : 1L);
        long presentationTimeOffset = parseLong(xpp, "presentationTimeOffset", parent != null ? parent.presentationTimeOffset : 0L);
        long duration = parseLong(xpp, VastIconXmlManager.DURATION, parent != null ? parent.duration : -1L);
        int startNumber = parseInt(xpp, "startNumber", parent != null ? parent.startNumber : 1);
        UrlTemplate mediaTemplate = parseUrlTemplate(xpp, "media", parent != null ? parent.mediaTemplate : null);
        UrlTemplate initializationTemplate = parseUrlTemplate(xpp, "initialization", parent != null ? parent.initializationTemplate : null);
        RangedUri initialization = null;
        List<SegmentBase.SegmentTimelineElement> timeline = null;
        do {
            xpp.next();
            if (isStartTag(xpp, "Initialization")) {
                initialization = parseInitialization(xpp, baseUrl);
            } else if (isStartTag(xpp, "SegmentTimeline")) {
                timeline = parseSegmentTimeline(xpp);
            }
        } while (!isEndTag(xpp, "SegmentTemplate"));
        if (parent != null) {
            if (initialization == null) {
                initialization = parent.initialization;
            }
            if (timeline == null) {
                timeline = parent.segmentTimeline;
            }
        }
        return buildSegmentTemplate(initialization, timescale, presentationTimeOffset, periodDurationMs, startNumber, duration, timeline, initializationTemplate, mediaTemplate, baseUrl);
    }

    protected SegmentBase.SegmentTemplate buildSegmentTemplate(RangedUri initialization, long timescale, long presentationTimeOffset, long periodDurationMs, int startNumber, long duration, List<SegmentBase.SegmentTimelineElement> timeline, UrlTemplate initializationTemplate, UrlTemplate mediaTemplate, String baseUrl) {
        return new SegmentBase.SegmentTemplate(initialization, timescale, presentationTimeOffset, periodDurationMs, startNumber, duration, timeline, initializationTemplate, mediaTemplate, baseUrl);
    }

    protected List<SegmentBase.SegmentTimelineElement> parseSegmentTimeline(XmlPullParser xpp) throws XmlPullParserException, IOException {
        List<SegmentBase.SegmentTimelineElement> segmentTimeline = new ArrayList<>();
        long elapsedTime = 0;
        do {
            xpp.next();
            if (isStartTag(xpp, "S")) {
                elapsedTime = parseLong(xpp, "t", elapsedTime);
                long duration = parseLong(xpp, "d");
                int count = parseInt(xpp, "r", 0) + 1;
                for (int i = 0; i < count; i++) {
                    segmentTimeline.add(buildSegmentTimelineElement(elapsedTime, duration));
                    elapsedTime += duration;
                }
            }
        } while (!isEndTag(xpp, "SegmentTimeline"));
        return segmentTimeline;
    }

    protected SegmentBase.SegmentTimelineElement buildSegmentTimelineElement(long elapsedTime, long duration) {
        return new SegmentBase.SegmentTimelineElement(elapsedTime, duration);
    }

    protected UrlTemplate parseUrlTemplate(XmlPullParser xpp, String name, UrlTemplate defaultValue) {
        String valueString = xpp.getAttributeValue(null, name);
        if (valueString != null) {
            UrlTemplate defaultValue2 = UrlTemplate.compile(valueString);
            return defaultValue2;
        }
        return defaultValue;
    }

    protected RangedUri parseInitialization(XmlPullParser xpp, String baseUrl) {
        return parseRangedUrl(xpp, baseUrl, "sourceURL", "range");
    }

    protected RangedUri parseSegmentUrl(XmlPullParser xpp, String baseUrl) {
        return parseRangedUrl(xpp, baseUrl, "media", "mediaRange");
    }

    protected RangedUri parseRangedUrl(XmlPullParser xpp, String baseUrl, String urlAttribute, String rangeAttribute) {
        String urlText = xpp.getAttributeValue(null, urlAttribute);
        long rangeStart = 0;
        long rangeLength = -1;
        String rangeText = xpp.getAttributeValue(null, rangeAttribute);
        if (rangeText != null) {
            String[] rangeTextArray = rangeText.split("-");
            rangeStart = Long.parseLong(rangeTextArray[0]);
            if (rangeTextArray.length == 2) {
                rangeLength = (Long.parseLong(rangeTextArray[1]) - rangeStart) + 1;
            }
        }
        return buildRangedUri(baseUrl, urlText, rangeStart, rangeLength);
    }

    protected RangedUri buildRangedUri(String baseUrl, String urlText, long rangeStart, long rangeLength) {
        return new RangedUri(baseUrl, urlText, rangeStart, rangeLength);
    }

    private static String checkLanguageConsistency(String firstLanguage, String secondLanguage) {
        if (firstLanguage == null) {
            return secondLanguage;
        }
        if (secondLanguage != null) {
            Assertions.checkState(firstLanguage.equals(secondLanguage));
            return firstLanguage;
        }
        return firstLanguage;
    }

    private static int checkAdaptationSetTypeConsistency(int firstType, int secondType) {
        if (firstType == -1) {
            return secondType;
        }
        if (secondType != -1) {
            Assertions.checkState(firstType == secondType);
            return firstType;
        }
        return firstType;
    }

    protected static boolean isEndTag(XmlPullParser xpp, String name) throws XmlPullParserException {
        return xpp.getEventType() == 3 && name.equals(xpp.getName());
    }

    protected static boolean isStartTag(XmlPullParser xpp, String name) throws XmlPullParserException {
        return xpp.getEventType() == 2 && name.equals(xpp.getName());
    }

    protected static boolean isStartTag(XmlPullParser xpp) throws XmlPullParserException {
        return xpp.getEventType() == 2;
    }

    protected static long parseDuration(XmlPullParser xpp, String name, long defaultValue) {
        String value = xpp.getAttributeValue(null, name);
        if (value == null) {
            return defaultValue;
        }
        long defaultValue2 = Util.parseXsDuration(value);
        return defaultValue2;
    }

    protected static long parseDateTime(XmlPullParser xpp, String name, long defaultValue) throws ParseException {
        String value = xpp.getAttributeValue(null, name);
        if (value == null) {
            return defaultValue;
        }
        long defaultValue2 = Util.parseXsDateTime(value);
        return defaultValue2;
    }

    protected static String parseBaseUrl(XmlPullParser xpp, String parentBaseUrl) throws XmlPullParserException, IOException {
        xpp.next();
        return UriUtil.resolve(parentBaseUrl, xpp.getText());
    }

    protected static int parseInt(XmlPullParser xpp, String name) {
        return parseInt(xpp, name, -1);
    }

    protected static int parseInt(XmlPullParser xpp, String name, int defaultValue) {
        String value = xpp.getAttributeValue(null, name);
        if (value == null) {
            return defaultValue;
        }
        int defaultValue2 = Integer.parseInt(value);
        return defaultValue2;
    }

    protected static long parseLong(XmlPullParser xpp, String name) {
        return parseLong(xpp, name, -1L);
    }

    protected static long parseLong(XmlPullParser xpp, String name, long defaultValue) {
        String value = xpp.getAttributeValue(null, name);
        if (value == null) {
            return defaultValue;
        }
        long defaultValue2 = Long.parseLong(value);
        return defaultValue2;
    }

    protected static String parseString(XmlPullParser xpp, String name, String defaultValue) {
        String value = xpp.getAttributeValue(null, name);
        return value == null ? defaultValue : value;
    }

    protected static final class ContentProtectionsBuilder implements Comparator<ContentProtection> {
        private ArrayList<ContentProtection> adaptationSetProtections;
        private ArrayList<ContentProtection> currentRepresentationProtections;
        private ArrayList<ContentProtection> representationProtections;
        private boolean representationProtectionsSet;

        protected ContentProtectionsBuilder() {
        }

        public void addAdaptationSetProtection(ContentProtection contentProtection) {
            if (this.adaptationSetProtections == null) {
                this.adaptationSetProtections = new ArrayList<>();
            }
            maybeAddContentProtection(this.adaptationSetProtections, contentProtection);
        }

        public void addRepresentationProtection(ContentProtection contentProtection) {
            if (this.currentRepresentationProtections == null) {
                this.currentRepresentationProtections = new ArrayList<>();
            }
            maybeAddContentProtection(this.currentRepresentationProtections, contentProtection);
        }

        public void endRepresentation() {
            if (!this.representationProtectionsSet) {
                if (this.currentRepresentationProtections != null) {
                    Collections.sort(this.currentRepresentationProtections, this);
                }
                this.representationProtections = this.currentRepresentationProtections;
                this.representationProtectionsSet = true;
            } else if (this.currentRepresentationProtections == null) {
                Assertions.checkState(this.representationProtections == null);
            } else {
                Collections.sort(this.currentRepresentationProtections, this);
                Assertions.checkState(this.currentRepresentationProtections.equals(this.representationProtections));
            }
            this.currentRepresentationProtections = null;
        }

        public ArrayList<ContentProtection> build() {
            if (this.adaptationSetProtections == null) {
                return this.representationProtections;
            }
            if (this.representationProtections == null) {
                return this.adaptationSetProtections;
            }
            for (int i = 0; i < this.representationProtections.size(); i++) {
                maybeAddContentProtection(this.adaptationSetProtections, this.representationProtections.get(i));
            }
            return this.adaptationSetProtections;
        }

        private void maybeAddContentProtection(List<ContentProtection> contentProtections, ContentProtection contentProtection) {
            if (!contentProtections.contains(contentProtection)) {
                for (int i = 0; i < contentProtections.size(); i++) {
                    Assertions.checkState(!contentProtections.get(i).schemeUriId.equals(contentProtection.schemeUriId));
                }
                contentProtections.add(contentProtection);
            }
        }

        @Override // java.util.Comparator
        public int compare(ContentProtection first, ContentProtection second) {
            return first.schemeUriId.compareTo(second.schemeUriId);
        }
    }
}
