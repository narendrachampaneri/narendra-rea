    private void initializeInterstitial() {
        if (nativeIsPlatformAmazon()) {
            initializeAmazonInterstitial();
        } else {
            initializeMopubInterstitial();
        }
        initializeAppLovinInterstitial();
    }