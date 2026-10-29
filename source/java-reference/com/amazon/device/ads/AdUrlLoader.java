package com.amazon.device.ads;

/* JADX INFO: loaded from: classes.dex */
class AdUrlLoader {
    private static final String LOGTAG = AdUrlLoader.class.getSimpleName();
    private final AdControlAccessor adControlAccessor;
    private final AdWebViewClient adWebViewClient;
    private final DeviceInfo deviceInfo;
    private final MobileAdsLogger logger;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final WebRequest.WebRequestFactory webRequestFactory;
    private final WebUtils2 webUtils;

    public AdUrlLoader(ThreadUtils.ThreadRunner threadRunner, AdWebViewClient adWebViewClient, WebRequest.WebRequestFactory webRequestFactory, AdControlAccessor adControlAccessor, WebUtils2 webUtils, MobileAdsLoggerFactory loggerFactory, DeviceInfo deviceInfo) {
        this.threadRunner = threadRunner;
        this.adWebViewClient = adWebViewClient;
        this.webRequestFactory = webRequestFactory;
        this.adControlAccessor = adControlAccessor;
        this.webUtils = webUtils;
        this.logger = loggerFactory.createMobileAdsLogger(LOGTAG);
        this.deviceInfo = deviceInfo;
    }

    public void putUrlExecutorInAdWebViewClient(String scheme, AdWebViewClient.UrlExecutor executor) {
        this.adWebViewClient.putUrlExecutor(scheme, executor);
    }

    public void setAdWebViewClientListener(AdWebViewClient.AdWebViewClientListener adWebViewClientListener) {
        this.adWebViewClient.setListener(adWebViewClientListener);
    }

    public AdWebViewClient getAdWebViewClient() {
        return this.adWebViewClient;
    }

    public void loadUrl(final String url, final boolean shouldPreload, final PreloadCallback callback) {
        String scheme = this.webUtils.getScheme(url);
        if (scheme.equals("http") || scheme.equals("https")) {
            this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdUrlLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    AdUrlLoader.this.loadUrlInThread(url, shouldPreload, callback);
                }
            }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.BACKGROUND_THREAD);
        } else {
            openUrl(url);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadUrlInThread(final String url, final boolean shouldPreload, final PreloadCallback callback) {
        WebRequest webRequest = this.webRequestFactory.createWebRequest();
        webRequest.setExternalLogTag(LOGTAG);
        webRequest.enableLogUrl(true);
        webRequest.setUrlString(url);
        webRequest.putHeader("User-Agent", this.deviceInfo.getUserAgentString());
        WebRequest.WebResponse response = null;
        try {
            response = webRequest.makeCall();
        } catch (WebRequest.WebRequestException e) {
            this.logger.e("Could not load URL (%s) into AdContainer: %s", url, e.getMessage());
        }
        if (response != null) {
            final String body = response.getResponseReader().readAsString();
            if (body != null) {
                this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdUrlLoader.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AdUrlLoader.this.adControlAccessor.loadHtml(url, body, shouldPreload, callback);
                    }
                }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
            } else {
                this.logger.e("Could not load URL (%s) into AdContainer.", url);
            }
        }
    }

    public void openUrl(String url) {
        this.adWebViewClient.openUrl(url);
    }
}
