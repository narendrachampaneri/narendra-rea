package com.amazon.ags.client.metrics;

import android.content.Context;
import android.util.Log;
import com.amazon.ags.VersionInfo;
import com.amazon.ags.auth.AuthManager;
import com.amazon.ags.client.metrics.events.GameCircleGenericEvent;
import com.amazon.ags.constants.metrics.MetricConstants;
import com.amazon.ags.html5.content.ContentVersion;
import com.amazon.ags.html5.util.DeviceInfo;
import com.amazon.ags.html5.util.GlobalState;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class EventCollectorClient implements GlobalState.GlobalStateListener {
    private static final String TAG = "GC_" + EventCollectorClient.class.getSimpleName();
    private static EventCollectorClient instance = null;
    private AuthManager authManager;
    private ContentVersion contentVersion;
    private DeviceInfo deviceInfo;
    private EventCollector eventCollector;
    private GlobalState globalState;

    public static synchronized EventCollectorClient initialize(Context appContext) {
        if (instance != null) {
            Log.d(TAG, "EventCollectorClient already initialized.");
        } else {
            instance = new EventCollectorClient(appContext);
        }
        return instance;
    }

    public static synchronized EventCollectorClient getInstance() {
        if (instance == null) {
            Log.e(TAG, "EventCollectorClient must be initialized before using");
            throw new IllegalAccessError("EventCollectorClient must be initialized before using");
        }
        return instance;
    }

    private EventCollectorClient(Context context) {
        try {
            AmazonInsightsEventCollector insightsCollector = new AmazonInsightsEventCollector(context);
            this.eventCollector = insightsCollector;
        } catch (IllegalConstructionException e) {
            Log.w(TAG, "Unable to create metrics collector. Reporting events will not work.", e);
        }
    }

    public EventCollectorClient(EventCollector eventCollector, GlobalState globalState, AuthManager authManager, ContentVersion contentVersion, DeviceInfo deviceInfo) {
        this.eventCollector = eventCollector;
        this.authManager = authManager;
        this.globalState = globalState;
        this.deviceInfo = deviceInfo;
        this.contentVersion = contentVersion;
    }

    public boolean isReportingEnabled() {
        return true;
    }

    public void reportGenericEvent(GameCircleGenericEvent genericEvent) {
        if (this.eventCollector == null) {
            Log.w(TAG, "Null Event Collector in Client");
            return;
        }
        try {
            if (isReportingEnabled()) {
                addGlobalStateAttributes(genericEvent);
                this.eventCollector.reportGenericEvent(genericEvent);
            }
        } catch (Exception e) {
            Log.w(TAG, "Cannot report event.", e);
        }
    }

    public void submitEvents() {
        if (this.eventCollector == null) {
            Log.w(TAG, "Null Event Collector in Client");
            return;
        }
        try {
            if (isReportingEnabled()) {
                this.eventCollector.submitEvents();
            }
        } catch (Exception e) {
            Log.w(TAG, "Cannot submit events.", e);
        }
    }

    public void setGlobalState(GlobalState globalState) {
        if (globalState != null) {
            this.globalState = globalState;
            this.eventCollector.setPlayerId(globalState.getPlayerId());
            this.eventCollector.setIsGuest(globalState.isGuestMode());
        }
    }

    public void setAuthManager(AuthManager authManager) {
        if (authManager != null) {
            this.authManager = authManager;
        }
    }

    public void setContentVersion(ContentVersion contentVersion) {
        if (contentVersion != null) {
            this.contentVersion = contentVersion;
        }
    }

    public void setDeviceInfo(DeviceInfo deviceInfo) {
        if (deviceInfo != null) {
            this.deviceInfo = deviceInfo;
        }
    }

    private void addGlobalStateAttributes(GameCircleGenericEvent event) {
        Map<String, String> attributes = event.getAttributes();
        if (this.globalState != null) {
            this.eventCollector.setPlayerId(this.globalState.getPlayerId());
            this.eventCollector.setIsGuest(this.globalState.isGuestMode());
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.PLAYER_ID.name(), this.globalState.getPlayerId());
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.PLAYING_ANONYMOUSLY.name(), Boolean.toString(this.globalState.isGuestMode()));
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.HIDDEN.name(), this.globalState.isHidden().toString());
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.COUNTRY_SUPPORT.name(), this.globalState.getCountrySupport());
        }
        if (this.authManager != null) {
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.GAME_ID.name(), this.authManager.getGameId());
        }
        if (this.contentVersion != null) {
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.JAVASCRIPT_VERSION.name(), this.contentVersion.getVersion());
        }
        if (this.deviceInfo != null) {
            attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.PLATFORM.name(), this.deviceInfo.getDeviceType());
        }
        attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.DEVICE_ID.name(), DeviceInfo.getIdentifier());
        attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.DEVICE_MANUFACTURER.name(), DeviceInfo.getManufacturer());
        attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.DEVICE_MODEL.name(), DeviceInfo.getModel());
        attributes.put(MetricConstants.MetricDecoratedValueAttributeKeys.NATIVE_VERSION.name(), VersionInfo.getSDKVersion().getVersion());
    }

    @Override // com.amazon.ags.html5.util.GlobalState.GlobalStateListener
    public void notifyStateSet(String key, String value) {
    }

    @Override // com.amazon.ags.html5.util.GlobalState.GlobalStateListener
    public void notifyPlayerIdSet(String playerId) {
        this.eventCollector.setPlayerId(playerId);
    }

    @Override // com.amazon.ags.html5.util.GlobalState.GlobalStateListener
    public void notifyIsGuestModeSet(boolean isGuestMode) {
        this.eventCollector.setIsGuest(isGuestMode);
    }

    public void pauseInsightsSession() {
        this.eventCollector.pauseInsightsSession();
    }

    public void resumeInsightsSession() {
        this.eventCollector.resumeInsightsSession();
    }
}
