package com.mopub.nativeads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.android.exoplayer.util.MimeTypes;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class NativeResponse {

    @NonNull
    private final String mAdUnitId;

    @NonNull
    private final Context mContext;

    @NonNull
    private final ImageLoader mImageLoader;
    private boolean mIsClicked;
    private boolean mIsDestroyed;

    @NonNull
    private final String mMoPubClickTracker;

    @NonNull
    private final Set<String> mMoPubImpressionTrackers;

    @NonNull
    private MoPubNative.MoPubNativeEventListener mMoPubNativeEventListener;

    @NonNull
    private final NativeAdInterface mNativeAd;
    private boolean mRecordedImpression;

    enum Parameter {
        IMPRESSION_TRACKER("imptracker", true),
        CLICK_TRACKER("clktracker", true),
        TITLE("title", false),
        TEXT(MimeTypes.BASE_TYPE_TEXT, false),
        MAIN_IMAGE("mainimage", false),
        ICON_IMAGE("iconimage", false),
        CLICK_DESTINATION("clk", false),
        FALLBACK("fallback", false),
        CALL_TO_ACTION("ctatext", false),
        STAR_RATING("starrating", false);


        @NonNull
        @VisibleForTesting
        static final Set<String> requiredKeys = new HashSet();

        @NonNull
        final String name;
        final boolean required;

        static {
            for (Parameter parameter : values()) {
                if (parameter.required) {
                    requiredKeys.add(parameter.name);
                }
            }
        }

        Parameter(String name, boolean required) {
            this.name = name;
            this.required = required;
        }

        @Nullable
        static Parameter from(@NonNull String name) {
            for (Parameter parameter : values()) {
                if (parameter.name.equals(name)) {
                    return parameter;
                }
            }
            return null;
        }
    }

    public NativeResponse(@NonNull Context context, @NonNull String impressionUrl, @NonNull String clickUrl, @NonNull String adUnitId, @NonNull NativeAdInterface nativeAd, @NonNull MoPubNative.MoPubNativeEventListener moPubNativeEventListener) {
        this.mContext = context.getApplicationContext();
        this.mAdUnitId = adUnitId;
        this.mMoPubNativeEventListener = moPubNativeEventListener;
        this.mNativeAd = nativeAd;
        this.mNativeAd.setNativeEventListener(new BaseForwardingNativeAd.NativeEventListener() { // from class: com.mopub.nativeads.NativeResponse.1
            @Override // com.mopub.nativeads.BaseForwardingNativeAd.NativeEventListener
            public void onAdImpressed() {
                NativeResponse.this.recordImpression(null);
            }

            @Override // com.mopub.nativeads.BaseForwardingNativeAd.NativeEventListener
            public void onAdClicked() {
                NativeResponse.this.handleClick(null);
            }
        });
        this.mMoPubImpressionTrackers = new HashSet();
        this.mMoPubImpressionTrackers.add(impressionUrl);
        this.mMoPubClickTracker = clickUrl;
        this.mImageLoader = Networking.getImageLoader(context);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("\n");
        stringBuilder.append(Parameter.TITLE.name).append(":").append(getTitle()).append("\n");
        stringBuilder.append(Parameter.TEXT.name).append(":").append(getText()).append("\n");
        stringBuilder.append(Parameter.ICON_IMAGE.name).append(":").append(getIconImageUrl()).append("\n");
        stringBuilder.append(Parameter.MAIN_IMAGE.name).append(":").append(getMainImageUrl()).append("\n");
        stringBuilder.append(Parameter.STAR_RATING.name).append(":").append(getStarRating()).append("\n");
        stringBuilder.append(Parameter.IMPRESSION_TRACKER.name).append(":").append(getImpressionTrackers()).append("\n");
        stringBuilder.append(Parameter.CLICK_TRACKER.name).append(":").append(this.mMoPubClickTracker).append("\n");
        stringBuilder.append(Parameter.CLICK_DESTINATION.name).append(":").append(getClickDestinationUrl()).append("\n");
        stringBuilder.append(Parameter.CALL_TO_ACTION.name).append(":").append(getCallToAction()).append("\n");
        stringBuilder.append("recordedImpression").append(":").append(this.mRecordedImpression).append("\n");
        stringBuilder.append("extras").append(":").append(getExtras());
        return stringBuilder.toString();
    }

    @NonNull
    public String getAdUnitId() {
        return this.mAdUnitId;
    }

    @Nullable
    public String getMainImageUrl() {
        return this.mNativeAd.getMainImageUrl();
    }

    @Nullable
    public String getIconImageUrl() {
        return this.mNativeAd.getIconImageUrl();
    }

    @Nullable
    public String getClickDestinationUrl() {
        return this.mNativeAd.getClickDestinationUrl();
    }

    @Nullable
    public String getCallToAction() {
        return this.mNativeAd.getCallToAction();
    }

    @Nullable
    public String getTitle() {
        return this.mNativeAd.getTitle();
    }

    @Nullable
    public String getText() {
        return this.mNativeAd.getText();
    }

    @NonNull
    public List<String> getImpressionTrackers() {
        Set<String> allImpressionTrackers = new HashSet<>();
        allImpressionTrackers.addAll(this.mMoPubImpressionTrackers);
        allImpressionTrackers.addAll(this.mNativeAd.getImpressionTrackers());
        return new ArrayList(allImpressionTrackers);
    }

    @NonNull
    public String getClickTracker() {
        return this.mMoPubClickTracker;
    }

    @Nullable
    public Double getStarRating() {
        return this.mNativeAd.getStarRating();
    }

    @Nullable
    public String getDaaIconClickthroughUrl() {
        return this.mNativeAd.getDaaIconClickthroughUrl();
    }

    public int getImpressionMinTimeViewed() {
        return this.mNativeAd.getImpressionMinTimeViewed();
    }

    public int getImpressionMinPercentageViewed() {
        return this.mNativeAd.getImpressionMinPercentageViewed();
    }

    @Nullable
    public Object getExtra(String key) {
        return this.mNativeAd.getExtra(key);
    }

    @NonNull
    public Map<String, Object> getExtras() {
        return this.mNativeAd.getExtras();
    }

    public boolean isOverridingImpressionTracker() {
        return this.mNativeAd.isOverridingImpressionTracker();
    }

    public boolean isOverridingClickTracker() {
        return this.mNativeAd.isOverridingClickTracker();
    }

    public void prepare(@NonNull View view) {
        if (!isDestroyed()) {
            if (!isOverridingClickTracker()) {
                setOnClickListener(view, new NativeViewClickListener());
            }
            this.mNativeAd.prepare(view);
        }
    }

    public void recordImpression(@Nullable View view) {
        if (!getRecordedImpression() && !isDestroyed()) {
            for (String impressionTracker : getImpressionTrackers()) {
                TrackingRequest.makeTrackingHttpRequest(impressionTracker, this.mContext, BaseEvent.Name.IMPRESSION_REQUEST);
            }
            this.mNativeAd.recordImpression();
            this.mRecordedImpression = true;
            this.mMoPubNativeEventListener.onNativeImpression(view);
        }
    }

    public void handleClick(@Nullable View view) {
        handleClick(view, new SpinningProgressView(this.mContext));
    }

    @VisibleForTesting
    void handleClick(@Nullable View view, @NonNull SpinningProgressView spinningProgressView) {
        Preconditions.checkNotNull(spinningProgressView);
        if (!isDestroyed()) {
            if (!isClicked()) {
                TrackingRequest.makeTrackingHttpRequest(this.mMoPubClickTracker, this.mContext, BaseEvent.Name.CLICK_REQUEST);
            }
            openClickDestinationUrl(view, spinningProgressView);
            this.mNativeAd.handleClick(view);
            this.mIsClicked = true;
            this.mMoPubNativeEventListener.onNativeClick(view);
        }
    }

    public void clear(@NonNull View view) {
        setOnClickListener(view, null);
        this.mNativeAd.clear(view);
    }

    public void destroy() {
        if (!isDestroyed()) {
            this.mMoPubNativeEventListener = MoPubNative.EMPTY_EVENT_LISTENER;
            this.mNativeAd.destroy();
            this.mIsDestroyed = true;
        }
    }

    public void loadMainImage(@Nullable ImageView imageView) {
        loadImageView(getMainImageUrl(), imageView);
    }

    public void loadIconImage(@Nullable ImageView imageView) {
        loadImageView(getIconImageUrl(), imageView);
    }

    public void loadExtrasImage(String key, ImageView imageView) {
        Object object = getExtra(key);
        if (object != null && (object instanceof String)) {
            loadImageView((String) object, imageView);
        }
    }

    public boolean getRecordedImpression() {
        return this.mRecordedImpression;
    }

    public boolean isClicked() {
        return this.mIsClicked;
    }

    public boolean isDestroyed() {
        return this.mIsDestroyed;
    }

    private void loadImageView(@Nullable String url, @Nullable final ImageView imageView) {
        if (imageView != null) {
            if (url == null) {
                imageView.setImageDrawable(null);
            } else {
                this.mImageLoader.get(url, new ImageLoader.ImageListener() { // from class: com.mopub.nativeads.NativeResponse.2
                    @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean isImmediate) {
                        if (!isImmediate) {
                            MoPubLog.d("Image was not loaded immediately into your ad view. You should call preCacheImages as part of your custom event loading process.");
                        }
                        imageView.setImageBitmap(imageContainer.getBitmap());
                    }

                    @Override // com.mopub.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError volleyError) {
                        MoPubLog.d("Failed to load image.", volleyError);
                        imageView.setImageDrawable(null);
                    }
                });
            }
        }
    }

    private void openClickDestinationUrl(@Nullable final View view, @NonNull final SpinningProgressView spinningProgressView) {
        Preconditions.checkNotNull(spinningProgressView);
        if (getClickDestinationUrl() != null) {
            if (view != null) {
                spinningProgressView.addToRoot(view);
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.nativeads.NativeResponse.3
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(@NonNull String url, @NonNull UrlAction urlAction) {
                    removeSpinningProgressView();
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(@NonNull String url, @NonNull UrlAction lastFailedUrlAction) {
                    removeSpinningProgressView();
                }

                private void removeSpinningProgressView() {
                    if (view != null) {
                        spinningProgressView.removeFromRoot();
                    }
                }
            }).build().handleUrl(this.mContext, getClickDestinationUrl());
        }
    }

    private void setOnClickListener(@NonNull View view, @Nullable View.OnClickListener onClickListener) {
        view.setOnClickListener(onClickListener);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                setOnClickListener(viewGroup.getChildAt(i), onClickListener);
            }
        }
    }

    @VisibleForTesting
    class NativeViewClickListener implements View.OnClickListener {
        NativeViewClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NonNull View view) {
            NativeResponse.this.handleClick(view);
        }
    }

    @Nullable
    @Deprecated
    public String getSubtitle() {
        return this.mNativeAd.getText();
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    MoPubNative.MoPubNativeEventListener getMoPubNativeEventListener() {
        return this.mMoPubNativeEventListener;
    }

    @VisibleForTesting
    @Deprecated
    void setRecordedImpression(boolean recordedImpression) {
        this.mRecordedImpression = recordedImpression;
    }
}
