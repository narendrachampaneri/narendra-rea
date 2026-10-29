package com.crashlytics.android.answers;

import com.google.android.exoplayer.C;
import java.math.BigDecimal;
import java.util.Currency;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseEvent extends PredefinedEvent<PurchaseEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_ID_ATTRIBUTE = "itemId";
    static final String ITEM_NAME_ATTRIBUTE = "itemName";
    static final String ITEM_PRICE_ATTRIBUTE = "itemPrice";
    static final String ITEM_TYPE_ATTRIBUTE = "itemType";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(C.MICROS_PER_SECOND);
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "purchase";

    public PurchaseEvent putItemId(String itemId) {
        this.predefinedAttributes.put(ITEM_ID_ATTRIBUTE, itemId);
        return this;
    }

    public PurchaseEvent putItemName(String itemName) {
        this.predefinedAttributes.put("itemName", itemName);
        return this;
    }

    public PurchaseEvent putItemType(String itemType) {
        this.predefinedAttributes.put("itemType", itemType);
        return this;
    }

    public PurchaseEvent putItemPrice(BigDecimal itemPrice) {
        if (!this.validator.isNull(itemPrice, "itemPrice")) {
            this.predefinedAttributes.put("itemPrice", Long.valueOf(priceToMicros(itemPrice)));
        }
        return this;
    }

    public PurchaseEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    public PurchaseEvent putSuccess(boolean purchaseSucceeded) {
        this.predefinedAttributes.put(SUCCESS_ATTRIBUTE, Boolean.toString(purchaseSucceeded));
        return this;
    }

    long priceToMicros(BigDecimal decimal) {
        return MICRO_CONSTANT.multiply(decimal).longValue();
    }

    @Override // com.crashlytics.android.answers.PredefinedEvent
    String getPredefinedType() {
        return "purchase";
    }
}
