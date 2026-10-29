    private void initializeMopubInterstitial() {
        String adUnitId;
        if (this.m_mopubInterstitial == null) {
            if (isTablet(getContext())) {
                adUnitId = "9810efc33b5a4855b366a5976be60f40";
                ApplicationInfo applicationInfo = getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    adUnitId = "f69388d72eba447d89b2af7f98fd2d47";
                }
            } else {
                adUnitId = "2ed112180a4e4d8f9b0a2d995d019740";
                ApplicationInfo applicationInfo2 = getApplicationInfo();
                int i2 = applicationInfo2.flags & 2;
                applicationInfo2.flags = i2;
                if (i2 != 0) {
                    adUnitId = "7aab546884a7453eb756f8a55f4a1d49";
                }
            }
            this.m_mopubInterstitial = new MoPubInterstitial(this, adUnitId);
            this.m_mopubInterstitial.setInterstitialAdListener(this);
        }
    }