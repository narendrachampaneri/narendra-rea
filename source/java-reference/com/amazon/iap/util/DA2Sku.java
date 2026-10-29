package com.amazon.iap.util;

/* JADX INFO: loaded from: classes.dex */
public enum DA2Sku {
    PROPACK("com.chadtowns.da2.propack", null),
    BATTLEPACK1("com.chadtowns.da2.battlepack1", null),
    BATTLEPACK2("com.chadtowns.da2.battlepack2", null),
    BATTLEPACK3("com.chadtowns.da2.battlepack3", null),
    BATTLEPACK4("com.chadtowns.da2.battlepack4", null);

    private final String availableMarkpetplace;
    private final String sku;

    public static DA2Sku fromSku(String sku, String marketplace) {
        if (PROPACK.getSku().equals(sku) && (marketplace == null || PROPACK.getAvailableMarketplace() == null || PROPACK.getAvailableMarketplace().equalsIgnoreCase(marketplace))) {
            return PROPACK;
        }
        if (BATTLEPACK1.getSku().equals(sku) && (marketplace == null || BATTLEPACK1.getAvailableMarketplace() == null || BATTLEPACK1.getAvailableMarketplace().equalsIgnoreCase(marketplace))) {
            return BATTLEPACK1;
        }
        if (BATTLEPACK2.getSku().equals(sku) && (marketplace == null || BATTLEPACK2.getAvailableMarketplace() == null || BATTLEPACK2.getAvailableMarketplace().equalsIgnoreCase(marketplace))) {
            return BATTLEPACK2;
        }
        if (BATTLEPACK3.getSku().equals(sku) && (marketplace == null || BATTLEPACK3.getAvailableMarketplace() == null || BATTLEPACK3.getAvailableMarketplace().equalsIgnoreCase(marketplace))) {
            return BATTLEPACK3;
        }
        if (BATTLEPACK4.getSku().equals(sku) && (marketplace == null || BATTLEPACK4.getAvailableMarketplace() == null || BATTLEPACK4.getAvailableMarketplace().equalsIgnoreCase(marketplace))) {
            return BATTLEPACK4;
        }
        return null;
    }

    public String getSku() {
        return this.sku;
    }

    public String getAvailableMarketplace() {
        return this.availableMarkpetplace;
    }

    DA2Sku(String sku, String availableMarkpetplace) {
        this.sku = sku;
        this.availableMarkpetplace = availableMarkpetplace;
    }
}
