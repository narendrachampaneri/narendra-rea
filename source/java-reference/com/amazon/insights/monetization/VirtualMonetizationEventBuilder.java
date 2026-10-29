package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class VirtualMonetizationEventBuilder extends MonetizationEventBuilder {
    private static Logger logger = Logger.getLogger(VirtualMonetizationEventBuilder.class);

    public static VirtualMonetizationEventBuilder create(EventClient eventClient) {
        return new VirtualMonetizationEventBuilder(eventClient);
    }

    public VirtualMonetizationEventBuilder withProductId(String productId) {
        setProductId(productId);
        return this;
    }

    public VirtualMonetizationEventBuilder withItemPrice(double itemPrice) {
        setItemPrice(Double.valueOf(itemPrice));
        return this;
    }

    public VirtualMonetizationEventBuilder withQuantity(int quantity) {
        setQuantity(Integer.valueOf(quantity));
        return this;
    }

    public VirtualMonetizationEventBuilder withCurrency(String currency) {
        setCurrency(currency);
        return this;
    }

    protected VirtualMonetizationEventBuilder(EventClient eventClient) {
        super(eventClient);
        setStore("Virtual");
    }

    @Override // com.amazon.insights.monetization.MonetizationEventBuilder
    protected boolean isValid() {
        if (getProductId() == null) {
            logger.devw("Virtual Monetization event is not valid: it is missing the product id");
            return false;
        }
        if (getQuantity() == null) {
            logger.devw("Virtual Monetization event is not valid: it is missing the quantity");
            return false;
        }
        if (getItemPrice() == null) {
            logger.devw("Virtual Monetization event is not valid: it is missing the numerical price");
            return false;
        }
        if (getCurrency() == null) {
            logger.devw("Virtual Monetization event is not valid: it is missing the currency");
            return false;
        }
        return true;
    }
}
