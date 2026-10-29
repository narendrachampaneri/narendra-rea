    private void initializeAmazonAdBanner() {
        if (this.m_amazonAdView == null) {
            destroyAdBanner();
            this.m_amazonAdView = new AdLayout(this, AdSize.SIZE_AUTO_NO_SCALE);
            this.m_appLayout = (FrameLayout) findViewById(android.R.id.content);
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(-1, -1);
            lp.gravity = 49;
            this.m_relAppLayout = new RelativeLayout(this);
            RelativeLayout.LayoutParams rlp = new RelativeLayout.LayoutParams(-1, -2);
            rlp.addRule(10);
            this.m_relAppLayout.addView(this.m_amazonAdView, rlp);
            this.m_appLayout.addView(this.m_relAppLayout, lp);
            this.m_amazonAdView.loadAd(this.m_amazonAdTargetingOptions);
        }
    }