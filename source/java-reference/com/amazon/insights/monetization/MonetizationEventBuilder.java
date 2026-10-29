package com.amazon.insights.monetization;

import com.amazon.insights.Event;
import com.amazon.insights.EventClient;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.StringUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MonetizationEventBuilder {
    static final String AMAZON_STORE = "Amazon";
    static final String GOOGLE_PLAY_STORE = "Google Play";
    static final String PURCHASE_EVENT_CURRENCY_ATTR = "_currency";
    static final String PURCHASE_EVENT_ITEM_PRICE_METRIC = "_item_price";
    static final String PURCHASE_EVENT_LOCALE_ATTR = "_locale";
    static final String PURCHASE_EVENT_NAME = "_monetization.purchase";
    static final String PURCHASE_EVENT_PRICE_FORMATTED_ATTR = "_item_price_formatted";
    static final String PURCHASE_EVENT_PRODUCT_ID_ATTR = "_product_id";
    static final String PURCHASE_EVENT_QUANTITY_METRIC = "_quantity";
    static final String PURCHASE_EVENT_STORE_ATTR = "_store";
    static final String PURCHASE_EVENT_TRANSACTION_ID_ATTR = "_transaction_id";
    static final String VIRTUAL_STORE = "Virtual";
    private static Logger logger = Logger.getLogger(MonetizationEventBuilder.class);
    private String currency;
    private final EventClient eventClient;
    private String formattedItemPrice;
    private Double itemPrice;
    private String productId;
    private Integer quantity;
    private String store;
    private String transactionId;

    protected abstract boolean isValid();

    public Event build() {
        Event purchaseEvent = null;
        if (isValid() && doBaseValidation()) {
            purchaseEvent = this.eventClient.createEvent(PURCHASE_EVENT_NAME);
            purchaseEvent.addAttribute(PURCHASE_EVENT_PRODUCT_ID_ATTR, this.productId);
            purchaseEvent.addAttribute(PURCHASE_EVENT_STORE_ATTR, this.store);
            purchaseEvent.addMetric(PURCHASE_EVENT_QUANTITY_METRIC, this.quantity);
            if (this.formattedItemPrice != null) {
                purchaseEvent.addAttribute(PURCHASE_EVENT_PRICE_FORMATTED_ATTR, this.formattedItemPrice);
            }
            if (this.itemPrice != null) {
                purchaseEvent.addMetric(PURCHASE_EVENT_ITEM_PRICE_METRIC, this.itemPrice);
            }
            if (this.transactionId != null) {
                purchaseEvent.addAttribute(PURCHASE_EVENT_TRANSACTION_ID_ATTR, this.transactionId);
            }
            if (this.currency != null) {
                purchaseEvent.addAttribute(PURCHASE_EVENT_CURRENCY_ATTR, this.currency);
            }
        }
        return purchaseEvent;
    }

    protected MonetizationEventBuilder(EventClient eventClient) {
        this.eventClient = eventClient;
    }

    protected String getProductId() {
        return this.productId;
    }

    protected void setProductId(String productId) {
        this.productId = productId;
    }

    protected Integer getQuantity() {
        return this.quantity;
    }

    protected void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    protected Double getItemPrice() {
        return this.itemPrice;
    }

    protected void setItemPrice(Double itemPrice) {
        this.itemPrice = itemPrice;
    }

    protected String getFormattedItemPrice() {
        return this.formattedItemPrice;
    }

    protected void setFormattedItemPrice(String formattedItemPrice) {
        this.formattedItemPrice = formattedItemPrice;
    }

    protected String getCurrency() {
        return this.currency;
    }

    protected void setCurrency(String currency) {
        this.currency = currency;
    }

    protected String getStore() {
        return this.store;
    }

    protected void setStore(String store) {
        this.store = store;
    }

    protected String getTransactionId() {
        return this.transactionId;
    }

    protected void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    private boolean doBaseValidation() {
        if (this.eventClient == null) {
            logger.devw("Cannot build Monetization event: the eventClient is null");
            return false;
        }
        if (StringUtil.isNullOrEmpty(this.productId)) {
            logger.devw("Base Monetization event is not valid: it is missing the product id");
            return false;
        }
        if (this.quantity == null) {
            logger.devw("Base Monetization event is not valid: it is missing the quantity");
            return false;
        }
        if (StringUtil.isNullOrEmpty(this.store)) {
            logger.devw("Base Monetization event is not valid: it is missing the store");
            return false;
        }
        if ((StringUtil.isNullOrEmpty(this.currency) || this.itemPrice == null) && StringUtil.isNullOrEmpty(this.formattedItemPrice)) {
            logger.devw("Base Monetization event is not valid: it requires the formatted price or the currency and price");
            return false;
        }
        return true;
    }
}
