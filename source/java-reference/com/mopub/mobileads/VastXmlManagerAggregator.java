package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.exoplayer.util.MimeTypes;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> implements TraceFieldInterface {
    private static final double AREA_WEIGHT = 30.0d;
    private static final double ASPECT_RATIO_WEIGHT = 70.0d;
    static final int MAX_TIMES_TO_FOLLOW_VAST_REDIRECT = 10;
    private static final int MINIMUM_COMPANION_AD_HEIGHT = 250;
    private static final int MINIMUM_COMPANION_AD_WIDTH = 300;
    private static final List<String> VIDEO_MIME_TYPES = Arrays.asList(MimeTypes.VIDEO_MP4, MimeTypes.VIDEO_H263);
    public Trace _nr_trace;

    @NonNull
    private final Context mContext;
    private final int mScreenAreaDp;
    private final double mScreenAspectRatio;
    private int mTimesFollowedVastRedirect;

    @NonNull
    private final WeakReference<VastXmlManagerAggregatorListener> mVastXmlManagerAggregatorListener;

    enum CompanionOrientation {
        LANDSCAPE,
        PORTRAIT
    }

    interface VastXmlManagerAggregatorListener {
        void onAggregationComplete(@Nullable VastVideoConfig vastVideoConfig);
    }

    @Override // com.newrelic.agent.android.api.v2.TraceFieldInterface
    public void _nr_setTrace(Trace trace) {
        try {
            this._nr_trace = trace;
        } catch (Exception e) {
        }
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ VastVideoConfig doInBackground(@Nullable String[] strArr) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "VastXmlManagerAggregator#doInBackground", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "VastXmlManagerAggregator#doInBackground", null);
        }
        VastVideoConfig vastVideoConfigDoInBackground2 = doInBackground2(strArr);
        TraceMachine.exitMethod();
        TraceMachine.unloadTraceContext(this);
        return vastVideoConfigDoInBackground2;
    }

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(@Nullable VastVideoConfig vastVideoConfig) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "VastXmlManagerAggregator#onPostExecute", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "VastXmlManagerAggregator#onPostExecute", null);
        }
        onPostExecute2(vastVideoConfig);
        TraceMachine.exitMethod();
    }

    VastXmlManagerAggregator(@NonNull VastXmlManagerAggregatorListener vastXmlManagerAggregatorListener, double screenAspectRatio, int screenAreaDp, @NonNull Context context) {
        Preconditions.checkNotNull(vastXmlManagerAggregatorListener);
        Preconditions.checkNotNull(context);
        this.mVastXmlManagerAggregatorListener = new WeakReference<>(vastXmlManagerAggregatorListener);
        this.mScreenAspectRatio = screenAspectRatio;
        this.mScreenAreaDp = screenAreaDp;
        this.mContext = context.getApplicationContext();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Networking.getUserAgent(this.mContext);
    }

    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    protected VastVideoConfig doInBackground2(@Nullable String... strings) {
        if (strings == null || strings.length == 0 || strings[0] == null) {
            return null;
        }
        try {
            String vastXml = strings[0];
            return evaluateVastXmlManager(vastXml, new ArrayList());
        } catch (Exception e) {
            MoPubLog.d("Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(@Nullable VastVideoConfig vastVideoConfig) {
        VastXmlManagerAggregatorListener listener = this.mVastXmlManagerAggregatorListener.get();
        if (listener != null) {
            listener.onAggregationComplete(vastVideoConfig);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        VastXmlManagerAggregatorListener listener = this.mVastXmlManagerAggregatorListener.get();
        if (listener != null) {
            listener.onAggregationComplete(null);
        }
    }

    @Nullable
    @VisibleForTesting
    VastVideoConfig evaluateVastXmlManager(@NonNull String vastXml, @NonNull List<VastTracker> errorTrackers) throws Throwable {
        VastVideoConfig vastVideoConfig;
        VastVideoConfig vastVideoConfig2;
        Preconditions.checkNotNull(vastXml, "vastXml cannot be null");
        Preconditions.checkNotNull(errorTrackers, "errorTrackers cannot be null");
        VastXmlManager xmlManager = new VastXmlManager();
        try {
            xmlManager.parseVastXml(vastXml);
            List<VastAdXmlManager> vastAdXmlManagers = xmlManager.getAdXmlManagers();
            if (fireErrorTrackerIfNoAds(vastAdXmlManagers, xmlManager, this.mContext)) {
                return null;
            }
            for (VastAdXmlManager vastAdXmlManager : vastAdXmlManagers) {
                if (isValidSequenceNumber(vastAdXmlManager.getSequence())) {
                    VastInLineXmlManager vastInLineXmlManager = vastAdXmlManager.getInLineXmlManager();
                    if (vastInLineXmlManager != null && (vastVideoConfig2 = evaluateInLineXmlManager(vastInLineXmlManager, errorTrackers)) != null) {
                        populateMoPubCustomElements(xmlManager, vastVideoConfig2);
                        return vastVideoConfig2;
                    }
                    VastWrapperXmlManager vastWrapperXmlManager = vastAdXmlManager.getWrapperXmlManager();
                    if (vastWrapperXmlManager != null) {
                        List<VastTracker> wrapperErrorTrackers = new ArrayList<>(errorTrackers);
                        wrapperErrorTrackers.addAll(vastWrapperXmlManager.getErrorTrackers());
                        String vastRedirectXml = evaluateWrapperRedirect(vastWrapperXmlManager, wrapperErrorTrackers);
                        if (vastRedirectXml != null && (vastVideoConfig = evaluateVastXmlManager(vastRedirectXml, wrapperErrorTrackers)) != null) {
                            vastVideoConfig.addImpressionTrackers(vastWrapperXmlManager.getImpressionTrackers());
                            List<VastLinearXmlManager> linearXmlManagers = vastWrapperXmlManager.getLinearXmlManagers();
                            for (VastLinearXmlManager linearXmlManager : linearXmlManagers) {
                                populateLinearTrackersAndIcon(linearXmlManager, vastVideoConfig);
                            }
                            if (!vastVideoConfig.hasCompanionAd()) {
                                vastVideoConfig.setVastCompanionAd(getBestCompanionAd(vastWrapperXmlManager.getCompanionAdXmlManagers(), CompanionOrientation.LANDSCAPE), getBestCompanionAd(vastWrapperXmlManager.getCompanionAdXmlManagers(), CompanionOrientation.PORTRAIT));
                            } else {
                                VastCompanionAdConfig landscapeCompanionAd = vastVideoConfig.getVastCompanionAd(2);
                                VastCompanionAdConfig portraitCompanionAd = vastVideoConfig.getVastCompanionAd(1);
                                if (landscapeCompanionAd != null && portraitCompanionAd != null) {
                                    for (VastCompanionAdXmlManager companionAdXmlManager : vastWrapperXmlManager.getCompanionAdXmlManagers()) {
                                        if (!companionAdXmlManager.hasResources()) {
                                            landscapeCompanionAd.addClickTrackers(companionAdXmlManager.getClickTrackers());
                                            landscapeCompanionAd.addCreativeViewTrackers(companionAdXmlManager.getCompanionCreativeViewTrackers());
                                            portraitCompanionAd.addClickTrackers(companionAdXmlManager.getClickTrackers());
                                            portraitCompanionAd.addCreativeViewTrackers(companionAdXmlManager.getCompanionCreativeViewTrackers());
                                        }
                                    }
                                }
                            }
                            populateMoPubCustomElements(xmlManager, vastVideoConfig);
                            return vastVideoConfig;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.d("Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(errorTrackers, VastErrorCode.XML_PARSING_ERROR, null, null, this.mContext);
            return null;
        }
    }

    @Nullable
    private VastVideoConfig evaluateInLineXmlManager(@NonNull VastInLineXmlManager vastInLineXmlManager, @NonNull List<VastTracker> errorTrackers) {
        Preconditions.checkNotNull(vastInLineXmlManager);
        Preconditions.checkNotNull(errorTrackers);
        List<VastLinearXmlManager> linearXmlManagers = vastInLineXmlManager.getLinearXmlManagers();
        for (VastLinearXmlManager linearXmlManager : linearXmlManagers) {
            String bestMediaFileUrl = getBestMediaFileUrl(linearXmlManager.getMediaXmlManagers());
            if (bestMediaFileUrl != null) {
                VastVideoConfig vastVideoConfig = new VastVideoConfig();
                vastVideoConfig.addImpressionTrackers(vastInLineXmlManager.getImpressionTrackers());
                populateLinearTrackersAndIcon(linearXmlManager, vastVideoConfig);
                vastVideoConfig.setClickThroughUrl(linearXmlManager.getClickThroughUrl());
                vastVideoConfig.setNetworkMediaFileUrl(bestMediaFileUrl);
                vastVideoConfig.setVastCompanionAd(getBestCompanionAd(vastInLineXmlManager.getCompanionAdXmlManagers(), CompanionOrientation.LANDSCAPE), getBestCompanionAd(vastInLineXmlManager.getCompanionAdXmlManagers(), CompanionOrientation.PORTRAIT));
                errorTrackers.addAll(vastInLineXmlManager.getErrorTrackers());
                vastVideoConfig.addErrorTrackers(errorTrackers);
                return vastVideoConfig;
            }
        }
        return null;
    }

    @Nullable
    private String evaluateWrapperRedirect(@NonNull VastWrapperXmlManager vastWrapperXmlManager, @NonNull List<VastTracker> wrapperErrorTrackers) throws Throwable {
        String vastAdTagUri = vastWrapperXmlManager.getVastAdTagURI();
        if (vastAdTagUri == null) {
            return null;
        }
        try {
            String vastRedirectXml = followVastRedirect(vastAdTagUri);
            return vastRedirectXml;
        } catch (Exception e) {
            MoPubLog.d("Failed to follow VAST redirect", e);
            if (wrapperErrorTrackers.isEmpty()) {
                return null;
            }
            TrackingRequest.makeVastTrackingHttpRequest(wrapperErrorTrackers, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.mContext);
            return null;
        }
    }

    private void populateLinearTrackersAndIcon(@NonNull VastLinearXmlManager linearXmlManager, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(linearXmlManager, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(linearXmlManager.getAbsoluteProgressTrackers());
        vastVideoConfig.addFractionalTrackers(linearXmlManager.getFractionalProgressTrackers());
        vastVideoConfig.addPauseTrackers(linearXmlManager.getPauseTrackers());
        vastVideoConfig.addResumeTrackers(linearXmlManager.getResumeTrackers());
        vastVideoConfig.addCompleteTrackers(linearXmlManager.getVideoCompleteTrackers());
        vastVideoConfig.addCloseTrackers(linearXmlManager.getVideoCloseTrackers());
        vastVideoConfig.addSkipTrackers(linearXmlManager.getVideoSkipTrackers());
        vastVideoConfig.addClickTrackers(linearXmlManager.getClickTrackers());
        if (vastVideoConfig.getSkipOffsetString() == null) {
            vastVideoConfig.setSkipOffset(linearXmlManager.getSkipOffset());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(getBestIcon(linearXmlManager.getIconXmlManagers()));
        }
    }

    private void populateMoPubCustomElements(@NonNull VastXmlManager xmlManager, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(xmlManager, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(xmlManager.getMoPubImpressionTrackers());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(xmlManager.getCustomCtaText());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(xmlManager.getCustomSkipText());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(xmlManager.getCustomCloseIconUrl());
        }
        if (!vastVideoConfig.isCustomForceOrientationSet()) {
            vastVideoConfig.setCustomForceOrientation(xmlManager.getCustomForceOrientation());
        }
    }

    private boolean fireErrorTrackerIfNoAds(@NonNull List<VastAdXmlManager> vastAdXmlManagers, @NonNull VastXmlManager xmlManager, @NonNull Context context) {
        if (vastAdXmlManagers.isEmpty() && xmlManager.getErrorTracker() != null) {
            TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(xmlManager.getErrorTracker()), this.mTimesFollowedVastRedirect > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
            return true;
        }
        return false;
    }

    @Nullable
    @VisibleForTesting
    String getBestMediaFileUrl(@NonNull List<VastMediaXmlManager> managers) {
        Preconditions.checkNotNull(managers, "managers cannot be null");
        List<VastMediaXmlManager> mediaXmlManagers = new ArrayList<>(managers);
        double bestMediaFitness = Double.POSITIVE_INFINITY;
        String bestMediaFileUrl = null;
        Iterator<VastMediaXmlManager> xmlManagerIterator = mediaXmlManagers.iterator();
        while (xmlManagerIterator.hasNext()) {
            VastMediaXmlManager mediaXmlManager = xmlManagerIterator.next();
            String mediaType = mediaXmlManager.getType();
            String mediaUrl = mediaXmlManager.getMediaUrl();
            if (!VIDEO_MIME_TYPES.contains(mediaType) || mediaUrl == null) {
                xmlManagerIterator.remove();
            } else {
                Integer mediaWidth = mediaXmlManager.getWidth();
                Integer mediaHeight = mediaXmlManager.getHeight();
                if (mediaWidth != null && mediaWidth.intValue() > 0 && mediaHeight != null && mediaHeight.intValue() > 0) {
                    double mediaFitness = calculateFitness(mediaWidth.intValue(), mediaHeight.intValue());
                    if (mediaFitness < bestMediaFitness) {
                        bestMediaFitness = mediaFitness;
                        bestMediaFileUrl = mediaUrl;
                    }
                }
            }
        }
        return bestMediaFileUrl;
    }

    @Nullable
    @VisibleForTesting
    VastCompanionAdConfig getBestCompanionAd(@NonNull List<VastCompanionAdXmlManager> managers, @NonNull CompanionOrientation orientation) {
        double companionFitness;
        Preconditions.checkNotNull(managers, "managers cannot be null");
        Preconditions.checkNotNull(orientation, "orientation cannot be null");
        List<VastCompanionAdXmlManager> companionXmlManagers = new ArrayList<>(managers);
        double bestCompanionFitness = Double.POSITIVE_INFINITY;
        VastCompanionAdXmlManager bestCompanionXmlManager = null;
        VastResource bestVastResource = null;
        Point bestVastScaledDimensions = null;
        for (VastResource.Type type : VastResource.Type.values()) {
            for (VastCompanionAdXmlManager companionXmlManager : companionXmlManagers) {
                Integer width = companionXmlManager.getWidth();
                Integer height = companionXmlManager.getHeight();
                if (width != null && width.intValue() >= 300 && height != null && height.intValue() >= 250) {
                    Point vastScaledDimensions = getScaledDimensions(width.intValue(), height.intValue());
                    VastResource vastResource = VastResource.fromVastResourceXmlManager(companionXmlManager.getResourceXmlManager(), type, vastScaledDimensions.x, vastScaledDimensions.y);
                    if (vastResource != null) {
                        if (CompanionOrientation.PORTRAIT == orientation) {
                            companionFitness = calculateFitness(height.intValue(), width.intValue());
                        } else {
                            companionFitness = calculateFitness(width.intValue(), height.intValue());
                        }
                        if (companionFitness < bestCompanionFitness) {
                            bestCompanionFitness = companionFitness;
                            bestCompanionXmlManager = companionXmlManager;
                            bestVastResource = vastResource;
                            bestVastScaledDimensions = vastScaledDimensions;
                        }
                    }
                }
            }
            if (bestCompanionXmlManager != null) {
                break;
            }
        }
        if (bestCompanionXmlManager != null) {
            return new VastCompanionAdConfig(bestVastScaledDimensions.x, bestVastScaledDimensions.y, bestVastResource, bestCompanionXmlManager.getClickThroughUrl(), bestCompanionXmlManager.getClickTrackers(), bestCompanionXmlManager.getCompanionCreativeViewTrackers());
        }
        return null;
    }

    @NonNull
    @VisibleForTesting
    Point getScaledDimensions(int widthDp, int heightDp) {
        Point defaultPoint = new Point(widthDp, heightDp);
        Display display = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        int x = display.getWidth();
        int y = display.getHeight();
        int screenWidth = Math.max(x, y);
        int screenHeight = Math.min(x, y);
        int widthPx = Dips.dipsToIntPixels(widthDp, this.mContext);
        int heightPx = Dips.dipsToIntPixels(heightDp, this.mContext);
        if (widthPx > screenWidth || heightPx > screenHeight) {
            float widthRatio = widthPx / screenWidth;
            float heightRatio = heightPx / screenHeight;
            Point point = new Point();
            if (widthRatio >= heightRatio) {
                point.x = screenWidth - 16;
                point.y = ((int) (heightPx / widthRatio)) - 16;
            } else {
                point.x = ((int) (widthPx / heightRatio)) - 16;
                point.y = screenHeight - 16;
            }
            if (point.x >= 0 && point.y >= 0) {
                point.x = Dips.pixelsToIntDips(point.x, this.mContext);
                point.y = Dips.pixelsToIntDips(point.y, this.mContext);
                return point;
            }
            return defaultPoint;
        }
        return defaultPoint;
    }

    @Nullable
    @VisibleForTesting
    VastIconConfig getBestIcon(@NonNull List<VastIconXmlManager> managers) {
        VastResource vastResource;
        Preconditions.checkNotNull(managers, "managers cannot be null");
        List<VastIconXmlManager> iconXmlManagers = new ArrayList<>(managers);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (VastIconXmlManager iconXmlManager : iconXmlManagers) {
                Integer width = iconXmlManager.getWidth();
                Integer height = iconXmlManager.getHeight();
                if (width != null && width.intValue() > 0 && width.intValue() <= 300 && height != null && height.intValue() > 0 && height.intValue() <= 300 && (vastResource = VastResource.fromVastResourceXmlManager(iconXmlManager.getResourceXmlManager(), type, width.intValue(), height.intValue())) != null) {
                    return new VastIconConfig(iconXmlManager.getWidth().intValue(), iconXmlManager.getHeight().intValue(), iconXmlManager.getOffsetMS(), iconXmlManager.getDurationMS(), vastResource, iconXmlManager.getClickTrackingUris(), iconXmlManager.getClickThroughUri(), iconXmlManager.getViewTrackingUris());
                }
            }
        }
        return null;
    }

    private double calculateFitness(int widthDp, int heightDp) {
        double mediaAspectRatio = ((double) widthDp) / ((double) heightDp);
        int mediaAreaDp = widthDp * heightDp;
        double aspectRatioRatio = mediaAspectRatio / this.mScreenAspectRatio;
        double areaRatio = ((double) mediaAreaDp) / ((double) this.mScreenAreaDp);
        return (ASPECT_RATIO_WEIGHT * Math.abs(Math.log(aspectRatioRatio))) + (AREA_WEIGHT * Math.abs(Math.log(areaRatio)));
    }

    static boolean isValidSequenceNumber(@Nullable String sequence) {
        if (TextUtils.isEmpty(sequence)) {
            return true;
        }
        try {
            int sequenceInt = Integer.parseInt(sequence);
            return sequenceInt < 2;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    @Nullable
    private String followVastRedirect(@NonNull String redirectUrl) throws Throwable {
        Preconditions.checkNotNull(redirectUrl);
        if (this.mTimesFollowedVastRedirect < 10) {
            this.mTimesFollowedVastRedirect++;
            HttpURLConnection urlConnection = null;
            InputStream inputStream = null;
            try {
                urlConnection = MoPubHttpUrlConnection.getHttpUrlConnection(redirectUrl);
                InputStream inputStream2 = new BufferedInputStream(urlConnection.getInputStream());
                try {
                    String strFromStream = Strings.fromStream(inputStream2);
                    Streams.closeStream(inputStream2);
                    if (urlConnection != null) {
                        urlConnection.disconnect();
                        return strFromStream;
                    }
                    return strFromStream;
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStream2;
                    Streams.closeStream(inputStream);
                    if (urlConnection != null) {
                        urlConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            return null;
        }
    }

    @VisibleForTesting
    @Deprecated
    void setTimesFollowedVastRedirect(int timesFollowedVastRedirect) {
        this.mTimesFollowedVastRedirect = timesFollowedVastRedirect;
    }
}
