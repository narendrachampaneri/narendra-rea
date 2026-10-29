package com.crashlytics.android.answers;

import com.google.android.exoplayer.C;
import java.math.BigDecimal;
import java.util.Currency;

/* JADX INFO: loaded from: classes.dex */
public class StartCheckoutEvent extends PredefinedEvent<StartCheckoutEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_COUNT_ATTRIBUTE = "itemCount";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(C.MICROS_PER_SECOND);
    static final String TOTAL_PRICE_ATTRIBUTE = "totalPrice";
    static final String TYPE = "startCheckout";

    public StartCheckoutEvent putItemCount(int itemCount) {
        this.predefinedAttributes.put("itemCount", Integer.valueOf(itemCount));
        return this;
    }

    public StartCheckoutEvent putTotalPrice(BigDecimal totalPrice) {
        if (!this.validator.isNull(totalPrice, TOTAL_PRICE_ATTRIBUTE)) {
            this.predefinedAttributes.put(TOTAL_PRICE_ATTRIBUTE, Long.valueOf(priceToMicros(totalPrice)));
        }
        return this;
    }

    public StartCheckoutEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, "currency")) {
            this.predefinedAttributes.put("currency", currency.getCurrencyCode());
        }
        return this;
    }

    long priceToMicros(BigDecimal decimal) {
        return MICRO_CONSTANT.multiply(decimal).longValue();
    }

    @Override // com.crashlytics.android.answers.PredefinedEvent
    String getPredefinedType() {
        return TYPE;
    }
}
