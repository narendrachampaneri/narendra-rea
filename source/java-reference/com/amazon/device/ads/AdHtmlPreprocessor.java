package com.amazon.device.ads;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class AdHtmlPreprocessor {
    private static final String LOGTAG = AdHtmlPreprocessor.class.getSimpleName();
    private final AdControlAccessor adControlAccessor;
    private final AdUtils2 adUtils;
    private final AdSDKBridgeList bridgeList;
    private final BridgeSelector bridgeSelector;
    private final MobileAdsLogger logger;

    public AdHtmlPreprocessor(BridgeSelector bridgeSelector, AdSDKBridgeList bridgeList, AdControlAccessor adControlAccessor, MobileAdsLoggerFactory loggerFactory, AdUtils2 adUtils) {
        this.bridgeSelector = bridgeSelector;
        this.bridgeList = bridgeList;
        this.adControlAccessor = adControlAccessor;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.adUtils = adUtils;
    }

    private void addAdSDKBridge(AdSDKBridge bridge) {
        this.bridgeList.addBridge(bridge);
    }

    public String preprocessHtml(String html, boolean shouldPreload) {
        Set<AdSDKBridgeFactory> bridgeFactories = this.bridgeSelector.getBridgeFactories(html);
        for (AdSDKBridgeFactory bridgeFactory : bridgeFactories) {
            addAdSDKBridge(bridgeFactory.createAdSDKBridge(this.adControlAccessor));
        }
        this.logger.d("Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f", Float.valueOf(this.adUtils.getScalingFactorAsFloat()), Integer.valueOf(this.adControlAccessor.getWindowWidth()), Integer.valueOf(this.adControlAccessor.getWindowHeight()), Integer.valueOf((int) (this.adControlAccessor.getAdWidth() * this.adUtils.getScalingFactorAsFloat())), Integer.valueOf((int) (this.adControlAccessor.getAdHeight() * this.adUtils.getScalingFactorAsFloat())), Double.valueOf(this.adControlAccessor.getScalingMultiplier()));
        String javascript = "";
        for (AdSDKBridge bridge : this.bridgeList) {
            if (bridge.getSDKEventListener() != null) {
                this.adControlAccessor.addSDKEventListener(bridge.getSDKEventListener());
            }
            if (bridge.getJavascript() != null) {
                javascript = javascript + bridge.getJavascript();
            }
            if (bridge.hasNativeExecution()) {
                this.adControlAccessor.addJavascriptInterface(bridge.getJavascriptInteractorExecutor(), shouldPreload, bridge.getName());
            }
        }
        return addHeadData(ensureHtmlTags(html), javascript);
    }

    private String ensureHtmlTags(String html) {
        String beginning = "";
        String end = "";
        if (!StringUtils.containsRegEx("\\A\\s*<![Dd][Oo][Cc][Tt][Yy][Pp][Ee]\\s+[Hh][Tt][Mm][Ll][\\s>]", html)) {
            beginning = "<!DOCTYPE html>";
        }
        if (!StringUtils.containsRegEx("<[Hh][Tt][Mm][Ll][\\s>]", html)) {
            beginning = beginning + "<html>";
            end = "</html>";
        }
        if (!StringUtils.containsRegEx("<[Hh][Ee][Aa][Dd][\\s>]", html)) {
            beginning = beginning + "<head></head>";
        }
        if (!StringUtils.containsRegEx("<[Bb][Oo][Dd][Yy][\\s>]", html)) {
            beginning = beginning + "<body>";
            end = "</body>" + end;
        }
        return beginning + html + end;
    }

    private String addHeadData(String html, String javascript) {
        String headTag = StringUtils.getFirstMatch("<[Hh][Ee][Aa][Dd](\\s*>|\\s[^>]*>)", html);
        String headData = "";
        if (!StringUtils.containsRegEx("<[Mm][Ee][Tt][Aa](\\s[^>]*\\s|\\s)[Nn][Aa][Mm][Ee]\\s*=\\s*[\"'][Vv][Ii][Ee][Ww][Pp][Oo][Rr][Tt][\"']", html)) {
            headData = this.adControlAccessor.getScalingMultiplier() >= 0.0d ? "<meta name=\"viewport\" content=\"width=" + this.adControlAccessor.getWindowWidth() + ", height=" + this.adControlAccessor.getWindowHeight() + ", initial-scale=" + this.adUtils.getViewportInitialScale(this.adControlAccessor.getScalingMultiplier()) + ", minimum-scale=" + this.adControlAccessor.getScalingMultiplier() + ", maximum-scale=" + this.adControlAccessor.getScalingMultiplier() + "\"/>" : "<meta name=\"viewport\" content=\"width=device-width, height=device-height, user-scalable=no, initial-scale=1.0\"/>";
        }
        String headData2 = headData + "<style>html,body{margin:0;padding:0;height:100%;border:none;}</style>";
        if (javascript.length() > 0) {
            headData2 = headData2 + "<script type='text/javascript'>" + javascript + "</script>";
        }
        return html.replace(headTag, headTag + headData2);
    }
}
