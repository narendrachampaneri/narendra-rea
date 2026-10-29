package com.amazon.ags.html5.overlay;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.amazon.ags.client.KindleFireProxy;
import com.amazon.ags.constants.OverlayBindingKeys;
import com.amazon.ags.constants.ToastKeys;
import com.amazon.ags.html5.content.GCVariationManager;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinator;
import com.amazon.ags.html5.factory.AGSClientInstanceCoordinatorListener;
import com.amazon.ags.html5.overlay.toasts.ClickableToast;
import com.amazon.ags.html5.overlay.toasts.ClickableToastFactory;
import com.amazon.ags.html5.overlay.toasts.ClickableToastObserver;
import com.amazon.ags.html5.util.DeviceInfo;
import com.amazon.ags.html5.util.ImageManager;
import com.chartboost.sdk.CBLocation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class OverlayManager implements ClickableToastObserver, AGSClientInstanceCoordinatorListener {
    private static final long COMMON_LEADERBOARD_MINIMUM_WAIT = 10000;
    private static final String TAG = "GC_" + OverlayManager.class.getSimpleName();
    private InGameToastWrapper activeToast;
    private Activity activity;
    private final Context context;
    private final GCVariationManager gcVariationManager;
    private final ImageManager imageManager;
    private final KindleFireProxy kindleFireProxy;
    private final Map<String, Long> leaderboardLastTimeShownMap;
    private final OverlaySessionInformation overlaySessionInformation;
    private final Queue<String> pendingToasts;
    private final ClickableToastFactory toastFactory;
    private final Handler uiThreadHandler;

    public OverlayManager(Context context, Handler uiThreadHandler, ClickableToastFactory toastFactory, KindleFireProxy kindleFireProxy, OverlaySessionInformation overlaySessionInformation, GCVariationManager gcVariationManager, ImageManager imageManager) {
        AGSClientInstanceCoordinator.getInstance().addAGSClientInstanceCoordinatorListener(this);
        this.activity = AGSClientInstanceCoordinator.getInstance().getCurrentActivity();
        this.overlaySessionInformation = overlaySessionInformation;
        this.context = context;
        this.uiThreadHandler = uiThreadHandler;
        this.toastFactory = toastFactory;
        this.activeToast = null;
        this.kindleFireProxy = kindleFireProxy;
        this.gcVariationManager = gcVariationManager;
        this.imageManager = imageManager;
        this.pendingToasts = new LinkedList();
        this.leaderboardLastTimeShownMap = new HashMap();
    }

    public void showOverlay(String overlayData) {
        if (this.kindleFireProxy.isOverlaysSupported()) {
            this.kindleFireProxy.showOverlay(overlayData);
        } else {
            showHtmlOverlay(overlayData);
        }
    }

    public void showAlert(String overlayData) {
        showHtmlAlert(overlayData);
    }

    private void showHtmlOverlay(String overlayData) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(this.context, GameCircleUserInterface.class.getName()));
        intent.setFlags(335609856);
        intent.setAction(Long.toString(System.currentTimeMillis()));
        intent.putExtra(OverlayBindingKeys.OVERLAY_DATA_BUNDLE_KEY, overlayData);
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_GAMECIRCLE_VERSION_KEY, this.overlaySessionInformation.getGameCircleVersion());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_CLIENT_VERSION_KEY, this.overlaySessionInformation.getClientVersion());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_CONTENT_VERSION_KEY, this.overlaySessionInformation.getContentVersion());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_APPLICATION_NAME_KEY, this.overlaySessionInformation.getApplicationName());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_LANGUAGE_CODE_KEY, this.overlaySessionInformation.getLocalizationUtil().getLanguageCode());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_COUNTRY_CODE_KEY, this.overlaySessionInformation.getLocalizationUtil().getCountryCode());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_IDENTIFIER_KEY, DeviceInfo.getIdentifier());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MANUFACTURER_KEY, DeviceInfo.getManufacturer());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MODEL_KEY, DeviceInfo.getModel());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_TYPE_KEY, this.overlaySessionInformation.getDeviceInfo().getDeviceType());
        JSONObject variationCacheJson = getVariationCacheJson();
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_VARIATION_CACHE, !(variationCacheJson instanceof JSONObject) ? variationCacheJson.toString() : JSONObjectInstrumentation.toString(variationCacheJson));
        this.context.startActivity(intent);
    }

    private void showHtmlAlert(String overlayData) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(this.context, GameCircleAlertUserInterface.class.getName()));
        intent.setFlags(335609856);
        intent.setAction(Long.toString(System.currentTimeMillis()));
        intent.putExtra(OverlayBindingKeys.OVERLAY_DATA_BUNDLE_KEY, overlayData);
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_GAMECIRCLE_VERSION_KEY, this.overlaySessionInformation.getGameCircleVersion());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_CLIENT_VERSION_KEY, this.overlaySessionInformation.getClientVersion());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_CONTENT_VERSION_KEY, this.overlaySessionInformation.getContentVersion());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_APPLICATION_NAME_KEY, this.overlaySessionInformation.getApplicationName());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_LANGUAGE_CODE_KEY, this.overlaySessionInformation.getLocalizationUtil().getLanguageCode());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_COUNTRY_CODE_KEY, this.overlaySessionInformation.getLocalizationUtil().getCountryCode());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_IDENTIFIER_KEY, DeviceInfo.getIdentifier());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MANUFACTURER_KEY, DeviceInfo.getManufacturer());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_MODEL_KEY, DeviceInfo.getModel());
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_DEVICE_TYPE_KEY, this.overlaySessionInformation.getDeviceInfo().getDeviceType());
        JSONObject variationCacheJson = getVariationCacheJson();
        intent.putExtra(OverlayBindingKeys.OVERLAY_SESSION_VARIATION_CACHE, !(variationCacheJson instanceof JSONObject) ? variationCacheJson.toString() : JSONObjectInstrumentation.toString(variationCacheJson));
        this.context.startActivity(intent);
    }

    private JSONObject getVariationCacheJson() {
        JSONObject variationsJson = new JSONObject();
        Map<String, String> variations = this.gcVariationManager.getCachedVariations();
        try {
            for (Map.Entry<String, String> entry : variations.entrySet()) {
                variationsJson.put(entry.getKey(), entry.getValue());
            }
        } catch (Exception e) {
            Log.w(TAG, "Error occurred while preparing variation cache for overlay", e);
        }
        return variationsJson;
    }

    private synchronized void processNextToast() {
        String leaderboardName;
        String nextToastRequest = this.pendingToasts.peek();
        if (nextToastRequest != null) {
            try {
                JSONObject toastRequest = JSONObjectInstrumentation.init(nextToastRequest);
                String canBeDisabled = toastRequest.getString("canBeDisabled");
                if (PopUpPrefs.INSTANCE.isEnabled() || (!PopUpPrefs.INSTANCE.isEnabled() && "false".equals(canBeDisabled))) {
                    String toastType = toastRequest.getString("type");
                    JSONArray dedupeTypes = toastRequest.getJSONArray(ToastKeys.TOAST_DEDUPE_KEY);
                    boolean shouldHideCommonLeaderboardToast = false;
                    if (toastType.equals(CBLocation.LOCATION_LEADERBOARD) && (leaderboardName = toastRequest.optString("leaderboardName")) != null) {
                        if (this.leaderboardLastTimeShownMap.containsKey(leaderboardName) && System.currentTimeMillis() - this.leaderboardLastTimeShownMap.get(leaderboardName).longValue() < COMMON_LEADERBOARD_MINIMUM_WAIT) {
                            shouldHideCommonLeaderboardToast = true;
                        }
                        this.leaderboardLastTimeShownMap.put(leaderboardName, Long.valueOf(System.currentTimeMillis()));
                    }
                    Set<String> toastDedupeTypes = new HashSet<>(dedupeTypes.length());
                    for (int i = 0; i < dedupeTypes.length(); i++) {
                        String dedupeType = dedupeTypes.getString(i);
                        toastDedupeTypes.add(dedupeType);
                    }
                    boolean shouldHideDuplicate = this.activeToast != null && this.activeToast.getToast().isShowing() && this.activeToast.isDedupeCompatibleWithType(toastType);
                    if (shouldHideCommonLeaderboardToast || shouldHideDuplicate) {
                        this.pendingToasts.remove(nextToastRequest);
                        this.activeToast.aggregate(nextToastRequest);
                    } else if ((this.activeToast != null && !this.activeToast.getToast().isShowing()) || this.activeToast == null) {
                        this.pendingToasts.remove(nextToastRequest);
                        final ClickableToast toast = this.toastFactory.getClickableWebViewToast(nextToastRequest);
                        toast.addClickableToastObserver(this);
                        InGameToastWrapper toastWrapper = new InGameToastWrapper(toastType, toastDedupeTypes, toast);
                        this.activeToast = toastWrapper;
                        String toastIconUrl = toastRequest.getString("icon");
                        if (!TextUtils.isEmpty(toastIconUrl)) {
                            this.imageManager.downloadImage(toastIconUrl);
                        }
                        this.uiThreadHandler.post(new Runnable() { // from class: com.amazon.ags.html5.overlay.OverlayManager.1
                            @Override // java.lang.Runnable
                            public void run() {
                                toast.show(OverlayManager.this.uiThreadHandler);
                            }
                        });
                    }
                } else {
                    this.pendingToasts.remove(nextToastRequest);
                }
            } catch (Exception e) {
                this.pendingToasts.remove(nextToastRequest);
                Log.e(TAG, "Unable to parse toast request", e);
            }
        }
    }

    public synchronized void showToast(String toastData) {
        this.pendingToasts.add(toastData);
        processNextToast();
    }

    private static class InGameToastWrapper {
        private int aggregateCount;
        private final Set<String> dedupeTypes;
        private final ClickableToast toast;
        private final String type;

        public InGameToastWrapper(String type, Set<String> dedupeTypes, ClickableToast toast) {
            if (type == null || dedupeTypes == null || toast == null) {
                throw new IllegalArgumentException("Cannot instantiate InGameToastWrapper with null arguments");
            }
            if (TextUtils.isEmpty(type)) {
                throw new IllegalArgumentException("Cannot instantiate InGameToastWrapper with empty type");
            }
            this.type = type;
            this.dedupeTypes = dedupeTypes;
            this.toast = toast;
            this.aggregateCount = 0;
        }

        public ClickableToast getToast() {
            return this.toast;
        }

        public void aggregate(String data) {
            this.aggregateCount++;
            this.toast.update(data, this.aggregateCount);
        }

        public boolean isDedupeCompatibleWithType(String type) {
            if (TextUtils.isEmpty(type)) {
                throw new IllegalArgumentException("type argument must be non-empty");
            }
            return this.dedupeTypes.contains(type);
        }
    }

    @Override // com.amazon.ags.html5.overlay.toasts.ClickableToastObserver
    public void notifyToastDestroyed() {
        processNextToast();
    }

    private synchronized void refreshActivity() {
        if (this.activity != AGSClientInstanceCoordinator.getInstance().getCurrentActivity()) {
            this.activity = AGSClientInstanceCoordinator.getInstance().getCurrentActivity();
            this.activeToast = null;
        }
    }

    @Override // com.amazon.ags.html5.factory.AGSClientInstanceCoordinatorListener
    public void notifyCurrentActivityChanged(Activity activity) {
        refreshActivity();
    }
}
