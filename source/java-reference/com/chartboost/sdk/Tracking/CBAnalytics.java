package com.chartboost.sdk.Tracking;

import android.text.TextUtils;
import android.util.Base64;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventTypes;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.Libraries.g;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.b;
import com.chartboost.sdk.impl.az;
import com.chartboost.sdk.impl.ba;
import java.io.File;
import java.util.EnumMap;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class CBAnalytics {

    public enum CBIAPPurchaseInfo {
        PRODUCT_ID,
        PRODUCT_TITLE,
        PRODUCT_DESCRIPTION,
        PRODUCT_PRICE,
        PRODUCT_CURRENCY_CODE,
        GOOGLE_PURCHASE_DATA,
        GOOGLE_PURCHASE_SIGNATURE,
        AMAZON_PURCHASE_TOKEN,
        AMAZON_USER_ID
    }

    public enum CBIAPType {
        GOOGLE_PLAY,
        AMAZON
    }

    private CBAnalytics() {
    }

    public enum CBLevelType {
        HIGHEST_LEVEL_REACHED(1),
        CURRENT_AREA(2),
        CHARACTER_LEVEL(3),
        OTHER_SEQUENTIAL(4),
        OTHER_NONSEQUENTIAL(5);

        private int a;

        CBLevelType(int value) {
            this.a = value;
        }

        public int getLevelType() {
            return this.a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004b A[Catch: all -> 0x00a1, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x0013, B:9:0x0021, B:11:0x002f, B:13:0x003d, B:18:0x0054, B:15:0x004b), top: B:23:0x0005 }] */
    public synchronized void trackInAppPurchaseEvent(EnumMap<CBIAPPurchaseInfo, String> map, CBIAPType iapType) {
        if (map == null || iapType == null) {
            CBLogging.b("CBPostInstallTracker", "Null object is passed. Please pass a valid value object");
        } else if (TextUtils.isEmpty(map.get(CBIAPPurchaseInfo.PRODUCT_ID)) || TextUtils.isEmpty(map.get(CBIAPPurchaseInfo.PRODUCT_TITLE)) || TextUtils.isEmpty(map.get(CBIAPPurchaseInfo.PRODUCT_DESCRIPTION)) || TextUtils.isEmpty(map.get(CBIAPPurchaseInfo.PRODUCT_PRICE)) || TextUtils.isEmpty(map.get(CBIAPPurchaseInfo.PRODUCT_CURRENCY_CODE))) {
            CBLogging.b("CBPostInstallTracker", "Null object is passed. Please pass a valid value object");
        } else {
            a(map.get(CBIAPPurchaseInfo.PRODUCT_ID), map.get(CBIAPPurchaseInfo.PRODUCT_TITLE), map.get(CBIAPPurchaseInfo.PRODUCT_DESCRIPTION), map.get(CBIAPPurchaseInfo.PRODUCT_PRICE), map.get(CBIAPPurchaseInfo.PRODUCT_CURRENCY_CODE), map.get(CBIAPPurchaseInfo.GOOGLE_PURCHASE_DATA), map.get(CBIAPPurchaseInfo.GOOGLE_PURCHASE_SIGNATURE), map.get(CBIAPPurchaseInfo.AMAZON_USER_ID), map.get(CBIAPPurchaseInfo.AMAZON_PURCHASE_TOKEN), iapType);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00bc A[Catch: all -> 0x0020, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:9:0x0012, B:11:0x0018, B:16:0x0023, B:18:0x0029, B:20:0x002f, B:22:0x0035, B:24:0x003b, B:28:0x0049, B:30:0x0060, B:35:0x0071, B:37:0x0076, B:39:0x007a, B:41:0x0080, B:44:0x008e, B:46:0x00bc, B:55:0x010b, B:43:0x0086, B:47:0x00c5, B:49:0x00c9, B:51:0x00cf, B:54:0x00de, B:53:0x00d5, B:33:0x0069, B:26:0x0041), top: B:57:0x0003, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x010b A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:9:0x0012, B:11:0x0018, B:16:0x0023, B:18:0x0029, B:20:0x002f, B:22:0x0035, B:24:0x003b, B:28:0x0049, B:30:0x0060, B:35:0x0071, B:37:0x0076, B:39:0x007a, B:41:0x0080, B:44:0x008e, B:46:0x00bc, B:55:0x010b, B:43:0x0086, B:47:0x00c5, B:49:0x00c9, B:51:0x00cf, B:54:0x00de, B:53:0x00d5, B:33:0x0069, B:26:0x0041), top: B:57:0x0003, inners: #1 }] */
    private static synchronized void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, CBIAPType cBIAPType) {
        if (b.y() == null) {
            CBLogging.b("CBPostInstallTracker", "You need call Chartboost.init() before calling any public API's");
        } else if (!b.p()) {
            CBLogging.b("CBPostInstallTracker", "You need call Chartboost.OnStart() before tracking in-app purchases");
        } else if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str5)) {
            CBLogging.b("CBPostInstallTracker", "Null object is passed. Please pass a valid value object");
        } else {
            try {
                Matcher matcher = Pattern.compile("(\\d+\\.\\d+)|(\\d+)").matcher(str4);
                matcher.find();
                String strGroup = matcher.group();
                if (TextUtils.isEmpty(strGroup)) {
                    CBLogging.b("CBPostInstallTracker", "Invalid price object");
                } else {
                    float f = Float.parseFloat(strGroup);
                    e.a aVarA = null;
                    if (cBIAPType == CBIAPType.GOOGLE_PLAY) {
                        if (TextUtils.isEmpty(str6) || TextUtils.isEmpty(str7)) {
                            CBLogging.b("CBPostInstallTracker", "Null object is passed for for purchase data or purchase signature");
                        } else {
                            aVarA = e.a(e.a("purchaseData", str6), e.a("purchaseSignature", str7), e.a("type", Integer.valueOf(CBIAPType.GOOGLE_PLAY.ordinal())));
                            if (aVarA == null) {
                                CBLogging.b("CBPostInstallTracker", "Error while parsing the receipt to a JSON Object, ");
                            } else {
                                a(e.a(e.a("localized-title", str2), e.a("localized-description", str3), e.a("price", Float.valueOf(f)), e.a(AppLovinEventParameters.REVENUE_CURRENCY, str5), e.a("productID", str), e.a("receipt", Base64.encodeToString(aVarA.toString().getBytes(), 2))), AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, cBIAPType);
                            }
                        }
                    } else if (cBIAPType == CBIAPType.AMAZON) {
                        if (TextUtils.isEmpty(str8) || TextUtils.isEmpty(str9)) {
                            CBLogging.b("CBPostInstallTracker", "Null object is passed for for amazon user id or amazon purchase token");
                        } else {
                            aVarA = e.a(e.a("userID", str8), e.a("purchaseToken", str9), e.a("type", Integer.valueOf(CBIAPType.AMAZON.ordinal())));
                            if (aVarA == null) {
                                CBLogging.b("CBPostInstallTracker", "Error while parsing the receipt to a JSON Object, ");
                            } else {
                                a(e.a(e.a("localized-title", str2), e.a("localized-description", str3), e.a("price", Float.valueOf(f)), e.a(AppLovinEventParameters.REVENUE_CURRENCY, str5), e.a("productID", str), e.a("receipt", Base64.encodeToString(aVarA.toString().getBytes(), 2))), AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, cBIAPType);
                            }
                        }
                    } else if (aVarA == null) {
                        CBLogging.b("CBPostInstallTracker", "Error while parsing the receipt to a JSON Object, ");
                    } else {
                        a(e.a(e.a("localized-title", str2), e.a("localized-description", str3), e.a("price", Float.valueOf(f)), e.a(AppLovinEventParameters.REVENUE_CURRENCY, str5), e.a("productID", str), e.a("receipt", Base64.encodeToString(aVarA.toString().getBytes(), 2))), AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, cBIAPType);
                    }
                }
            } catch (IllegalStateException e) {
                CBLogging.b("CBPostInstallTracker", "Invalid price object");
            }
        }
    }

    public static synchronized void trackInAppGooglePlayPurchaseEvent(String title, String description, String price, String currency, String productID, String purchaseData, String purchaseSignature) {
        a(productID, title, description, price, currency, purchaseData, purchaseSignature, null, null, CBIAPType.GOOGLE_PLAY);
    }

    public static synchronized void trackInAppAmazonStorePurchaseEvent(String title, String description, String price, String currency, String productID, String userID, String purchaseToken) {
        a(productID, title, description, price, currency, null, null, userID, purchaseToken, CBIAPType.AMAZON);
    }

    public static synchronized void trackLevelInfo(String eventLabel, CBLevelType type, int mainLevel, String description) {
        trackLevelInfo(eventLabel, type, mainLevel, 0, description);
    }

    public static synchronized void trackLevelInfo(String eventLabel, CBLevelType type, int mainLevel, int subLevel, String description) {
        if (TextUtils.isEmpty(eventLabel)) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: event label cannot be empty or null");
        } else if (type == null || !(type instanceof CBLevelType)) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: level type cannot be empty or null, please choose from one of the CBLevelType enum values");
        } else if (mainLevel < 0 || subLevel < 0) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: Level number should be > 0");
        } else if (description.isEmpty()) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: description cannot be empty or null");
        } else {
            a(e.a(e.a("event_label", eventLabel), e.a("event_field", Integer.valueOf(type.getLevelType())), e.a("main_level", Integer.valueOf(mainLevel)), e.a("sub_level", Integer.valueOf(subLevel)), e.a("description", description), e.a("timestamp", Long.valueOf(System.currentTimeMillis())), e.a("data_type", "level_info")), "tracking");
        }
    }

    private static synchronized void a(e.a aVar, final String str, final CBIAPType cBIAPType) {
        az azVar = new az(String.format(Locale.US, "%s%s", "/post-install-event/", str));
        azVar.a(str, (Object) aVar);
        azVar.a(g.a(g.a("status", com.chartboost.sdk.Libraries.a.a)));
        azVar.b(str);
        azVar.a(true);
        azVar.a(new az.c() { // from class: com.chartboost.sdk.Tracking.CBAnalytics.1
            @Override // com.chartboost.sdk.impl.az.c
            public void a(e.a aVar2, az azVar2) {
            }

            @Override // com.chartboost.sdk.impl.az.c
            public void a(e.a aVar2, az azVar2, CBError cBError) {
                if (str.equals(AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE) && aVar2 != null && aVar2.f("status") == 400 && cBIAPType == CBIAPType.GOOGLE_PLAY) {
                    CBLogging.a("CBPostInstallTracker", str + " 400 response from server!!");
                    ba baVarA = ba.a(b.y());
                    h hVarJ = baVarA.j();
                    ConcurrentHashMap<az, File> concurrentHashMapI = baVarA.i();
                    if (hVarJ != null && concurrentHashMapI != null) {
                        hVarJ.c(concurrentHashMapI.get(azVar2));
                        concurrentHashMapI.remove(azVar2);
                    }
                }
            }
        });
    }

    private static synchronized void a(e.a aVar, String str) {
        az azVar = new az("/post-install-event/".concat("tracking"));
        azVar.a("track_info", (Object) aVar);
        azVar.a(g.a(g.a("status", com.chartboost.sdk.Libraries.a.a)));
        azVar.b(str);
        azVar.a(true);
        azVar.s();
    }
}
