package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class GooglePlayMonetizationEventBuilder extends MonetizationEventBuilder {
    private static Logger logger = Logger.getLogger(GooglePlayMonetizationEventBuilder.class);

    public static GooglePlayMonetizationEventBuilder create(EventClient eventClient) {
        return new GooglePlayMonetizationEventBuilder(eventClient);
    }

    public GooglePlayMonetizationEventBuilder withProductId(String productId) {
        setProductId(productId);
        return this;
    }

    public GooglePlayMonetizationEventBuilder withFormattedItemPrice(String formattedItemPrice) {
        setFormattedItemPrice(formattedItemPrice);
        return this;
    }

    public GooglePlayMonetizationEventBuilder withQuantity(int quantity) {
        setQuantity(Integer.valueOf(quantity));
        return this;
    }

    public GooglePlayMonetizationEventBuilder withTransactionId(String transactionId) {
        setTransactionId(transactionId);
        return this;
    }

    protected GooglePlayMonetizationEventBuilder(EventClient eventClient) {
        super(eventClient);
        setStore("Google Play");
    }

    @Override // com.amazon.insights.monetization.MonetizationEventBuilder
    protected boolean isValid() {
        if (getProductId() == null) {
            logger.devw("Cannot build Google Monetization event: it is missing the product id");
            return false;
        }
        if (getQuantity() == null) {
            logger.devw("Google Monetization event is not valid: it is missing the quantity");
            return false;
        }
        if (getFormattedItemPrice() == null) {
            logger.devw("Google Monetization event is not valid: it is missing the formatted localized price");
            return false;
        }
        if (getTransactionId() == null) {
            logger.devw("Google Monetization event is not valid: it is missing the transaction id");
            return false;
        }
        return true;
    }
}
