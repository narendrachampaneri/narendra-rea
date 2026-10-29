    private void initializeAmazonInterstitial() {
        AdRegistration.setAppKey("161f45bad9264cc99d03eb2fad19cb21");
        if (this.m_amazonInterstitialAd == null) {
            this.m_amazonInterstitialAd = new InterstitialAd(this);
            this.m_amazonInterstitialAd.setListener(this);
            this.m_isAmazonInterstitialAdReady = false;
        }
    }