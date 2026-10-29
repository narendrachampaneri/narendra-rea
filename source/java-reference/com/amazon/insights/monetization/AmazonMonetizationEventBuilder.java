package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class AmazonMonetizationEventBuilder extends MonetizationEventBuilder {
    private static Logger logger = Logger.getLogger(AmazonMonetizationEventBuilder.class);

    public static AmazonMonetizationEventBuilder create(EventClient eventClient) {
        return new AmazonMonetizationEventBuilder(eventClient);
    }

    public AmazonMonetizationEventBuilder withProductId(String productId) {
        setProductId(productId);
        return this;
    }

    public AmazonMonetizationEventBuilder withFormattedItemPrice(String formattedItemPrice) {
        setFormattedItemPrice(formattedItemPrice);
        return this;
    }

    public AmazonMonetizationEventBuilder withQuantity(int quantity) {
        setQuantity(Integer.valueOf(quantity));
        return this;
    }

    protected AmazonMonetizationEventBuilder(EventClient eventClient) {
        super(eventClient);
        setStore("Amazon");
    }

    @Override // com.amazon.insights.monetization.MonetizationEventBuilder
    protected boolean isValid() {
        if (getProductId() == null) {
            logger.devw("Amazon Monetization event is not valid: it is missing the product id");
            return false;
        }
        if (getQuantity() == null) {
            logger.devw("Amazon Monetization event is not valid: it is missing the quantity");
            return false;
        }
        if (getFormattedItemPrice() == null) {
            logger.devw("Amazon Monetization event is not valid: it is missing the formatted localized price");
            return false;
        }
        return true;
    }
}
