package com.amazon.insights.monetization;

import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class CustomMonetizationEventBuilder extends MonetizationEventBuilder {
    private static Logger logger = Logger.getLogger(CustomMonetizationEventBuilder.class);

    public static CustomMonetizationEventBuilder create(EventClient eventClient) {
        return new CustomMonetizationEventBuilder(eventClient);
    }

    public CustomMonetizationEventBuilder withStore(String store) {
        setStore(store);
        return this;
    }

    public CustomMonetizationEventBuilder withProductId(String productId) {
        setProductId(productId);
        return this;
    }

    public CustomMonetizationEventBuilder withQuantity(int quantity) {
        setQuantity(Integer.valueOf(quantity));
        return this;
    }

    public CustomMonetizationEventBuilder withFormattedItemPrice(String formattedItemPrice) {
        setFormattedItemPrice(formattedItemPrice);
        return this;
    }

    public CustomMonetizationEventBuilder withItemPrice(double itemPrice) {
        setItemPrice(Double.valueOf(itemPrice));
        return this;
    }

    public CustomMonetizationEventBuilder withCurrency(String currency) {
        setCurrency(currency);
        return this;
    }

    public CustomMonetizationEventBuilder withTransactionId(String transactionId) {
        setTransactionId(transactionId);
        return this;
    }

    protected CustomMonetizationEventBuilder(EventClient eventClient) {
        super(eventClient);
    }

    @Override // com.amazon.insights.monetization.MonetizationEventBuilder
    protected boolean isValid() {
        if (getStore() == null) {
            logger.devw("Custom Monetization event is not valid: it is missing the store");
            return false;
        }
        if (getProductId() == null) {
            logger.devw("Custom Monetization event is not valid: it is missing the product id");
            return false;
        }
        if (getQuantity() == null) {
            logger.devw("Custom Monetization event is not valid: it is missing the quantity");
            return false;
        }
        if ((getCurrency() == null || getItemPrice() == null) && getFormattedItemPrice() == null) {
            logger.devw("Custom Monetization event is not valid: it requires the formatted localized price or the currency and price");
            return false;
        }
        return true;
    }
}
