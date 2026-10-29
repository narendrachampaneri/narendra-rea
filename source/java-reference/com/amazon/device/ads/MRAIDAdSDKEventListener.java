package com.amazon.device.ads;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
class MRAIDAdSDKEventListener implements SDKEventListener {
    private static final String LOGTAG = MRAIDAdSDKEventListener.class.getSimpleName();
    private final MobileAdsLogger logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
    private MRAIDAdSDKBridge mraidAdSDKBridge;

    MRAIDAdSDKEventListener(MRAIDAdSDKBridge adBridge) {
        this.mraidAdSDKBridge = adBridge;
    }

    @Override // com.amazon.device.ads.SDKEventListener
    public void onSDKEvent(SDKEvent sdkEvent, AdControlAccessor adControlAccessor) {
        this.logger.d(sdkEvent.getEventType().toString());
        switch (sdkEvent.getEventType()) {
            case RENDERED:
                handleReadyEvent(adControlAccessor);
                break;
            case VISIBLE:
                handleVisibleEvent(adControlAccessor);
                break;
            case CLOSED:
                handleClosedEvent(adControlAccessor);
                break;
            case RESIZED:
                this.mraidAdSDKBridge.reportSizeChangeEvent();
                break;
            case HIDDEN:
            case DESTROYED:
                adControlAccessor.injectJavascript("mraidBridge.stateChange('hidden');");
                adControlAccessor.injectJavascript("mraidBridge.viewableChange('false');");
                break;
            case BRIDGE_ADDED:
                handleBridgeAddedEvent(sdkEvent, adControlAccessor);
                break;
        }
    }

    private void handleBridgeAddedEvent(SDKEvent sdkEvent, AdControlAccessor adControlAccessor) {
        String bridgeName = sdkEvent.getParameter(SDKEvent.BRIDGE_NAME);
        if (bridgeName != null && bridgeName.equals(this.mraidAdSDKBridge.getName())) {
            switch (adControlAccessor.getAdState()) {
                case EXPANDED:
                case SHOWING:
                    handleReadyEvent(adControlAccessor);
                    handleVisibleEvent(adControlAccessor);
                    break;
                case RENDERED:
                    handleReadyEvent(adControlAccessor);
                    break;
            }
        }
    }

    private void handleReadyEvent(AdControlAccessor adControlAccessor) {
        adControlAccessor.injectJavascript("mraidBridge.ready();");
    }

    private void handleVisibleEvent(AdControlAccessor adControlAccessor) {
        adControlAccessor.setOriginalOrientation((Activity) adControlAccessor.getContext());
        Size size = adControlAccessor.getMaxSize();
        this.mraidAdSDKBridge.updateExpandProperties(size.getWidth(), size.getHeight());
        Position currentPosition = adControlAccessor.getCurrentPosition();
        this.mraidAdSDKBridge.updateDefaultPosition(currentPosition.getSize().getWidth(), currentPosition.getSize().getHeight(), currentPosition.getX(), currentPosition.getY());
        this.mraidAdSDKBridge.orientationPropertyChange();
        adControlAccessor.injectJavascript("mraidBridge.stateChange('default');");
        adControlAccessor.injectJavascript("mraidBridge.viewableChange('true');");
    }

    private void handleClosedEvent(AdControlAccessor adControlAccessor) {
        if (adControlAccessor.getAdState().equals(AdState.EXPANDED)) {
            this.mraidAdSDKBridge.collapseExpandedAd(adControlAccessor);
            int currentOrientation = ((Activity) adControlAccessor.getContext()).getRequestedOrientation();
            if (currentOrientation != adControlAccessor.getOriginalOrientation()) {
                ((Activity) adControlAccessor.getContext()).setRequestedOrientation(adControlAccessor.getOriginalOrientation());
                return;
            }
            return;
        }
        if (adControlAccessor.getAdState().equals(AdState.SHOWING)) {
            int currentOrientation2 = ((Activity) adControlAccessor.getContext()).getRequestedOrientation();
            if (currentOrientation2 != adControlAccessor.getOriginalOrientation()) {
                ((Activity) adControlAccessor.getContext()).setRequestedOrientation(adControlAccessor.getOriginalOrientation());
            }
            adControlAccessor.injectJavascript("mraidBridge.stateChange('hidden');");
            adControlAccessor.injectJavascript("mraidBridge.viewableChange('false');");
        }
    }
}
