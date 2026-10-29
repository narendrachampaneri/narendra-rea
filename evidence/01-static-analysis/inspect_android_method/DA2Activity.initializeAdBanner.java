    private void initializeAdBanner() {
        if (nativeIsPlatformAmazon()) {
            initializeAmazonAdBanner();
        } else {
            initializeMopubAdBanner();
        }
    }