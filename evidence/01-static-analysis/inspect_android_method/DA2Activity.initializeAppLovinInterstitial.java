    private void initializeAppLovinInterstitial() {
        this.m_isAppLovinInterstitialAdReady = false;
        AppLovinSdk.initializeSdk(getContext());
        if (nativeIsPlatformAmazon()) {
        }
    }