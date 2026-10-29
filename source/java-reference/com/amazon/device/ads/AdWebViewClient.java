package com.amazon.device.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
class AdWebViewClient extends WebViewClient {
    protected static final String AAX_REDIRECT_BETA = "aax-beta.integ.amazon.com";
    protected static final String AAX_REDIRECT_GAMMA = "aax-us-east.amazon-adsystem.com";
    protected static final String AAX_REDIRECT_PROD = "aax-us-east.amazon-adsystem.com";
    public static final String AMAZON_MOBILE = "amazonmobile";
    protected static final String CORNERSTONE_BEST_ENDPOINT_BETA = "d16g-cornerstone-bes.integ.amazon.com";
    protected static final String CORNERSTONE_BEST_ENDPOINT_PROD = "pda-bes.amazon.com";
    public static final String GEO = "geo";
    public static final String GOOGLE_STREETVIEW = "google.streetview";
    public static final String MAILTO = "mailto";
    public static final String SMS = "sms";
    public static final String TELEPHONE = "tel";
    public static final String VOICEMAIL = "voicemail";
    protected static Set<String> redirectHosts;
    private final AdControlAccessor adControlAccessor;
    private final AndroidBuildInfo androidBuildInfo;
    private final AdSDKBridgeList bridgeList;
    private final Context context;
    private AdWebViewClientListener listener;
    private final MobileAdsLogger logger;
    private final MobileAdsLoggerFactory loggerFactory;
    private CopyOnWriteArrayList<String> resourceList = new CopyOnWriteArrayList<>();
    private final HashMap<String, UrlExecutor> urlExecutors = new HashMap<>();
    private final WebUtils2 webUtils;
    private static final String LOGTAG = AdWebViewClient.class.getSimpleName();
    protected static final HashSet<String> intentSchemes = new HashSet<>();

    interface AdWebViewClientListener {
        void onLoadResource(WebView webView, String str);

        void onPageFinished(WebView webView, String str);

        void onPageStarted(WebView webView, String str);

        void onReceivedError(WebView webView, int i, String str, String str2);
    }

    interface UrlExecutor {
        boolean execute(String str);
    }

    static {
        intentSchemes.add(TELEPHONE);
        intentSchemes.add(VOICEMAIL);
        intentSchemes.add(SMS);
        intentSchemes.add(MAILTO);
        intentSchemes.add(GEO);
        intentSchemes.add(GOOGLE_STREETVIEW);
        redirectHosts = new HashSet();
        redirectHosts.add("aax-us-east.amazon-adsystem.com");
        redirectHosts.add("aax-us-east.amazon-adsystem.com");
        redirectHosts.add(AAX_REDIRECT_BETA);
        redirectHosts.add(CORNERSTONE_BEST_ENDPOINT_PROD);
        redirectHosts.add(CORNERSTONE_BEST_ENDPOINT_BETA);
    }

    public AdWebViewClient(Context context, AdSDKBridgeList bridgeList, AdControlAccessor adControlAccessor, WebUtils2 webUtils, MobileAdsLoggerFactory loggerFactory, AndroidBuildInfo androidBuildInfo) {
        this.context = context;
        this.bridgeList = bridgeList;
        this.adControlAccessor = adControlAccessor;
        this.webUtils = webUtils;
        this.loggerFactory = loggerFactory;
        this.logger = this.loggerFactory.createMobileAdsLogger(LOGTAG);
        this.androidBuildInfo = androidBuildInfo;
        setupUrlExecutors();
    }

    public void setListener(AdWebViewClientListener listener) {
        this.listener = listener;
    }

    private void setupUrlExecutors() {
        this.urlExecutors.put(AMAZON_MOBILE, new AmazonMobileExecutor(this.context, this.loggerFactory, new AmazonDeviceLauncher(), this.webUtils));
        DefaultExecutor intentExecutor = new DefaultExecutor(this.context);
        for (String scheme : intentSchemes) {
            putUrlExecutor(scheme, intentExecutor);
        }
    }

    public void putUrlExecutor(String scheme, UrlExecutor executor) {
        this.urlExecutors.put(scheme, executor);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        this.logger.e("Error: %s", description);
        super.onReceivedError(view, errorCode, description, failingUrl);
        this.listener.onReceivedError(view, errorCode, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        return openUrl(url);
    }

    public boolean openUrl(String url) {
        Uri uri = Uri.parse(url);
        boolean ret = true;
        if (redirectHosts.contains(uri.getHost()) && !isHoneycombVersion()) {
            ret = false;
        }
        if (interpretScheme(url, getScheme(url))) {
            return true;
        }
        return ret;
    }

    protected String getScheme(String url) {
        return this.webUtils.getScheme(url);
    }

    protected boolean interpretScheme(String url, String scheme) {
        if (scheme == null) {
            return false;
        }
        if (scheme.equals("about") && url.equalsIgnoreCase("about:blank")) {
            return false;
        }
        if (this.urlExecutors.containsKey(scheme)) {
            return this.urlExecutors.get(scheme).execute(url);
        }
        this.logger.d("Scheme %s unrecognized. Launching as intent.", scheme);
        return this.webUtils.launchActivityForIntentLink(url, this.context);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        this.listener.onPageStarted(view, url);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        this.logger.d("Page Finished %s", url);
        if (!checkResources()) {
            if (this.listener == null) {
                this.logger.w("Call to onPageFinished() ignored because listener is null.");
            } else {
                this.listener.onPageFinished(view, url);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView view, String url) {
        this.resourceList.add(url);
        this.logger.d("Loading resource: %s", url);
        this.listener.onLoadResource(view, url);
    }

    private boolean checkResources() {
        boolean shouldReload = false;
        for (String resource : this.resourceList) {
            Set<AdSDKBridgeFactory> bridges = BridgeSelector.getInstance().getBridgeFactoriesForResourceLoad(resource);
            if (bridges.size() > 0) {
                for (AdSDKBridgeFactory factory : bridges) {
                    AdSDKBridge bridge = factory.createAdSDKBridge(this.adControlAccessor);
                    if (!this.bridgeList.contains(bridge)) {
                        shouldReload = true;
                        this.bridgeList.addBridge(bridge);
                    }
                }
            }
        }
        if (shouldReload) {
            ThreadUtils.executeOnMainThread(new Runnable() { // from class: com.amazon.device.ads.AdWebViewClient.1
                @Override // java.lang.Runnable
                public void run() {
                    AdWebViewClient.this.adControlAccessor.reload();
                }
            });
        }
        return shouldReload;
    }

    boolean isHoneycombVersion() {
        return AndroidTargetUtils.isBetweenAndroidAPIs(this.androidBuildInfo, 11, 13);
    }

    static class AmazonMobileExecutor implements UrlExecutor {
        private final Context context;
        private final AmazonDeviceLauncher launcher;
        private final MobileAdsLogger logger;
        private final WebUtils2 webUtils;

        AmazonMobileExecutor(Context context) {
            this(context, new MobileAdsLoggerFactory(), new AmazonDeviceLauncher(), new WebUtils2());
        }

        AmazonMobileExecutor(Context context, MobileAdsLoggerFactory loggerFactory, AmazonDeviceLauncher launcher, WebUtils2 webUtils) {
            this.context = context;
            this.logger = loggerFactory.createMobileAdsLogger(AdWebViewClient.LOGTAG);
            this.launcher = launcher;
            this.webUtils = webUtils;
        }

        @Override // com.amazon.device.ads.AdWebViewClient.UrlExecutor
        public boolean execute(String url) {
            specialUrlClicked(url);
            return true;
        }

        public void specialUrlClicked(String url) {
            List<String> intents;
            String action;
            this.logger.d("Executing AmazonMobile Intent");
            Uri uri = Uri.parse(url);
            try {
                intents = uri.getQueryParameters("intent");
            } catch (UnsupportedOperationException e) {
                intents = null;
            }
            if (intents != null && intents.size() > 0) {
                for (String intent : intents) {
                    if (launchExternalActivity(intent)) {
                        return;
                    }
                }
                handleApplicationDefinedSpecialURL(url);
                return;
            }
            if (this.launcher.isWindowshopPresent(this.context)) {
                if (uri.getHost().equals("shopping") && (action = uri.getQueryParameter("app-action")) != null && action.length() != 0) {
                    if (action.equals(ProductAction.ACTION_DETAIL)) {
                        String asin = uri.getQueryParameter("asin");
                        if (asin != null && asin.length() != 0) {
                            this.launcher.launchWindowshopDetailPage(this.context, asin);
                            return;
                        }
                        return;
                    }
                    if (action.equals(AppLovinEventTypes.USER_EXECUTED_SEARCH)) {
                        String keyword = uri.getQueryParameter("keyword");
                        if (keyword != null && keyword.length() != 0) {
                            this.launcher.launchWindowshopSearchPage(this.context, keyword);
                            return;
                        }
                        return;
                    }
                    if (action.equals("webview")) {
                        handleApplicationDefinedSpecialURL(url);
                        return;
                    }
                    return;
                }
                return;
            }
            handleApplicationDefinedSpecialURL(url);
        }

        protected void handleApplicationDefinedSpecialURL(String url) {
            this.logger.i("Special url clicked, but was not handled by SDK. Url: %s", url);
        }

        protected boolean launchExternalActivity(String url) {
            return this.webUtils.launchActivityForIntentLink(url, this.context);
        }
    }

    static class DefaultExecutor implements UrlExecutor {
        private final Context context;

        public DefaultExecutor(Context context) {
            this.context = context;
        }

        @Override // com.amazon.device.ads.AdWebViewClient.UrlExecutor
        public boolean execute(String url) {
            WebUtils.launchActivityForIntentLink(url, this.context);
            return true;
        }
    }
}
