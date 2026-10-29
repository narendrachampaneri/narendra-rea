package com.inmobi.monetization;

import android.app.Activity;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.AdErrorCode;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.IMAdListener;
import com.inmobi.monetization.internal.InterstitialAd;
import com.inmobi.monetization.internal.InvalidManifestErrorMessages;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class IMInterstitial {
    InterstitialAd a;
    boolean b;
    IMAdListener c;
    private IMInterstitialListener d;
    private IMIncentivisedListener e;
    private long f;
    private Activity g;
    private State h;
    private String i;

    public enum State {
        INIT,
        ACTIVE,
        LOADING,
        READY,
        UNKNOWN
    }

    public IMInterstitial(Activity activity, String str) {
        this.f = -1L;
        this.h = State.INIT;
        this.i = null;
        this.b = false;
        this.c = new IMAdListener() { // from class: com.inmobi.monetization.IMInterstitial.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
                IMInterstitial.this.h = State.ACTIVE;
                IMInterstitial.this.a(102, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
                IMInterstitial.this.a(104, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
                IMInterstitial.this.h = State.INIT;
                IMInterstitial.this.a(103, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                IMInterstitial.this.h = State.READY;
                IMInterstitial.this.a(100, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(AdErrorCode adErrorCode) {
                IMInterstitial.this.h = State.INIT;
                IMInterstitial.this.a(101, adErrorCode, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
                IMInterstitial.this.a(105, null, map);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
                IMInterstitial.this.a(106, null, map);
            }
        };
        this.g = activity;
        this.i = str;
        a();
    }

    public IMInterstitial(Activity activity, long j) {
        this.f = -1L;
        this.h = State.INIT;
        this.i = null;
        this.b = false;
        this.c = new IMAdListener() { // from class: com.inmobi.monetization.IMInterstitial.1
            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onShowAdScreen() {
                IMInterstitial.this.h = State.ACTIVE;
                IMInterstitial.this.a(102, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onLeaveApplication() {
                IMInterstitial.this.a(104, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onDismissAdScreen() {
                IMInterstitial.this.h = State.INIT;
                IMInterstitial.this.a(103, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestSucceeded() {
                IMInterstitial.this.h = State.READY;
                IMInterstitial.this.a(100, null, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdRequestFailed(AdErrorCode adErrorCode) {
                IMInterstitial.this.h = State.INIT;
                IMInterstitial.this.a(101, adErrorCode, null);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onAdInteraction(Map<String, String> map) {
                IMInterstitial.this.a(105, null, map);
            }

            @Override // com.inmobi.monetization.internal.IMAdListener
            public void onIncentCompleted(Map<Object, Object> map) {
                IMInterstitial.this.a(106, null, map);
            }
        };
        this.g = activity;
        this.f = j;
        a();
    }

    public State getState() {
        return this.h;
    }

    private void a() {
        if (this.f > 0) {
            this.a = new InterstitialAd(this.g, this.f);
        } else {
            this.a = new InterstitialAd(this.g, this.i);
        }
        this.a.setAdListener(this.c);
    }

    public void loadInterstitial() {
        if (this.a != null) {
            if (this.h == State.LOADING) {
                IMErrorCode iMErrorCode = IMErrorCode.INVALID_REQUEST;
                iMErrorCode.setMessage(InvalidManifestErrorMessages.MSG_AD_DOWNLOAD);
                Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_AD_DOWNLOAD);
                this.d.onInterstitialFailed(this, iMErrorCode);
                return;
            }
            if (this.h == State.ACTIVE) {
                IMErrorCode iMErrorCode2 = IMErrorCode.INVALID_REQUEST;
                iMErrorCode2.setMessage("Interstitial ad is in ACTIVE state. Try again after sometime.");
                Log.debug(Constants.LOG_TAG, "Interstitial ad is in ACTIVE state. Try again after sometime.");
                this.d.onInterstitialFailed(this, iMErrorCode2);
                return;
            }
            this.h = State.LOADING;
            this.a.loadAd();
            return;
        }
        IMErrorCode iMErrorCode3 = IMErrorCode.INVALID_REQUEST;
        Log.debug(Constants.LOG_TAG, "Interstitial ad is in ACTIVE state. Try again after sometime.");
        this.d.onInterstitialFailed(this, iMErrorCode3);
    }

    public void stopLoading() {
        if (this.a != null) {
            this.a.stopLoading();
        }
    }

    public void setIMInterstitialListener(IMInterstitialListener iMInterstitialListener) {
        this.d = iMInterstitialListener;
    }

    public void disableHardwareAcceleration() {
        this.b = true;
    }

    @Deprecated
    public void destroy() {
    }

    public void setAppId(String str) {
        if (this.a != null) {
            this.a.setAppId(str);
        }
    }

    public void setSlotId(long j) {
        if (this.a != null) {
            this.a.setSlotId(j);
        }
    }

    public void show() {
        if (this.a != null && this.h == State.READY) {
            this.a.show();
        } else {
            Log.debug(Constants.LOG_TAG, "Interstitial ad is not in the 'READY' state. Current state: " + this.h);
        }
    }

    @Deprecated
    public void show(long j) {
        if (this.a != null) {
            this.a.show(j);
        }
    }

    public void setIMIncentivisedListener(IMIncentivisedListener iMIncentivisedListener) {
        this.e = iMIncentivisedListener;
    }

    public void setKeywords(String str) {
        if (str == null || "".equals(str.trim())) {
            Log.debug(Constants.LOG_TAG, "Keywords cannot be null or blank.");
        } else if (this.a != null) {
            this.a.setKeywords(str);
        }
    }

    public void setRequestParams(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            Log.debug(Constants.LOG_TAG, "Request params cannot be null or empty.");
        } else if (this.a != null) {
            this.a.setRequestParams(map);
        }
    }

    @Deprecated
    public void setRefTagParam(String str, String str2) {
        if (str == null || str2 == null) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_NIL_KEY_VALUE);
            return;
        }
        if (str.trim().equals("") || str2.trim().equals("")) {
            Log.debug(Constants.LOG_TAG, InvalidManifestErrorMessages.MSG_EMPTY_KEY_VALUE);
            return;
        }
        HashMap map = new HashMap();
        map.put(str, str2);
        if (this.a != null) {
            this.a.setRequestParams(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final AdErrorCode adErrorCode, final Map<?, ?> map) {
        if (this.d != null) {
            this.g.runOnUiThread(new Runnable() { // from class: com.inmobi.monetization.IMInterstitial.2
                @Override // java.lang.Runnable
                public void run() {
                    switch (i) {
                        case 100:
                            IMInterstitial.this.d.onInterstitialLoaded(IMInterstitial.this);
                            break;
                        case 101:
                            IMInterstitial.this.d.onInterstitialFailed(IMInterstitial.this, IMErrorCode.a(adErrorCode));
                            break;
                        case 102:
                            IMInterstitial.this.d.onShowInterstitialScreen(IMInterstitial.this);
                            break;
                        case 103:
                            IMInterstitial.this.d.onDismissInterstitialScreen(IMInterstitial.this);
                            break;
                        case 104:
                            IMInterstitial.this.d.onLeaveApplication(IMInterstitial.this);
                            break;
                        case 105:
                            IMInterstitial.this.d.onInterstitialInteraction(IMInterstitial.this, map);
                            break;
                        case 106:
                            if (IMInterstitial.this.e != null) {
                                IMInterstitial.this.e.onIncentCompleted(IMInterstitial.this, map);
                            }
                            break;
                        default:
                            Log.debug(Constants.LOG_TAG, adErrorCode.toString());
                            break;
                    }
                }
            });
        }
    }
}
