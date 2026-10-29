    private void initializeMopubAdBanner() {
        String adUnitId;
        if (this.m_mopubView == null) {
            destroyAdBanner();
            this.m_mopubView = new MoPubView(this);
            float scale = getApplicationContext().getResources().getDisplayMetrics().density;
            if (isTablet(getContext())) {
                adUnitId = "815fbd0e71604d529b39bac95a90433a";
                ApplicationInfo applicationInfo = getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    adUnitId = "b1607fd0620f4213911cd6ba2bc44f16";
                }
                this.m_bannerParam = new FrameLayout.LayoutParams(728, 90);
            } else {
                adUnitId = "e920dac0641b4758a0b2d3e38c2a3448";
                ApplicationInfo applicationInfo2 = getApplicationInfo();
                int i2 = applicationInfo2.flags & 2;
                applicationInfo2.flags = i2;
                if (i2 != 0) {
                    adUnitId = "3f2c1a504f6c4ab9b1fe24a119b05a55";
                }
                this.m_bannerParam = new FrameLayout.LayoutParams((int) (320.0f * scale), (int) (50.0f * scale));
            }
            this.m_mopubView.setAdUnitId(adUnitId);
            this.m_mopubView.setBannerAdListener(this);
            this.m_mopubView.loadAd();
            this.m_appLayout = (FrameLayout) findViewById(android.R.id.content);
            this.m_bannerParam.gravity = 49;
            this.m_appLayout.addView(this.m_mopubView, this.m_bannerParam);
        }
    }