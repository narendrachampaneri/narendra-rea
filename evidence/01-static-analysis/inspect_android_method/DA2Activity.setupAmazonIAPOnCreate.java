    private void setupAmazonIAPOnCreate() {
        if (nativeIsPlatformAmazon()) {
            this.da2AmazonIapManager = new DA2IapManager(this);
            DA2PurchasingListener amazonPurchasingListener = new DA2PurchasingListener(this.da2AmazonIapManager);
            PurchasingService.registerListener(getApplicationContext(), amazonPurchasingListener);
        }
    }