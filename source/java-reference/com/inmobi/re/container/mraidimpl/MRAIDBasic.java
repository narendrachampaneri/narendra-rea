package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.webkit.URLUtil;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MRAIDBasic {
    private IMWebView a;
    private Activity b;

    public MRAIDBasic(IMWebView iMWebView, Activity activity) {
        this.a = iMWebView;
        this.b = activity;
    }

    public void open(final String str) {
        try {
            try {
                if (str.startsWith("http://") || (str.contains("https") && !str.contains("play.google.com") && !str.contains("market.android.com") && !str.contains("market%3A%2F%2F"))) {
                    if (!URLUtil.isValidUrl(str)) {
                        this.a.raiseError("Invalid url", "open");
                        return;
                    }
                    Intent intent = new Intent(this.b, (Class<?>) IMBrowserActivity.class);
                    Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> open:" + str);
                    intent.putExtra(IMBrowserActivity.EXTRA_URL, str);
                    intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
                    if (this.a.getStateVariable() == IMWebView.ViewState.DEFAULT && !this.a.mIsInterstitialAd && !this.a.mWebViewIsBrowserActivity) {
                        intent.putExtra("FIRST_INSTANCE", true);
                    }
                    IMBrowserActivity.setWebViewListener(this.a.mListener);
                    try {
                        this.b.startActivity(intent);
                        if (!this.a.mWebViewIsBrowserActivity) {
                            this.a.fireOnShowAdScreen();
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        this.a.raiseError("Invalid url", "open");
                        return;
                    }
                }
                new Thread(new Runnable() { // from class: com.inmobi.re.container.mraidimpl.MRAIDBasic.1
                    @Override // java.lang.Runnable
                    public void run() {
                        String finalRedirectedUrl = InternalSDKUtil.getFinalRedirectedUrl(str);
                        if (finalRedirectedUrl != null) {
                            Intent intent2 = new Intent();
                            intent2.setAction("android.intent.action.VIEW");
                            intent2.setData(Uri.parse(finalRedirectedUrl));
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            try {
                                MRAIDBasic.this.b.startActivity(intent2);
                                if (MRAIDBasic.this.a.mListener != null) {
                                    MRAIDBasic.this.a.mListener.onLeaveApplication();
                                }
                            } catch (Exception e2) {
                                MRAIDBasic.this.a.raiseError("Invalid url", "open");
                            }
                        }
                    }
                }).start();
            } catch (Exception e2) {
                this.a.raiseError("Invalid url", "open");
            }
        } catch (ActivityNotFoundException e3) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to perform mraid Open");
        }
    }

    public void getCurrentPosition() {
        int i;
        int i2;
        int i3;
        Throwable th;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int width = 0;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> getCurrentPosition");
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.a.isViewable()) {
                int[] iArr = new int[2];
                this.a.getLocationOnScreen(iArr);
                i5 = iArr[0];
                try {
                    i4 = iArr[1];
                    try {
                        try {
                            width = (int) (this.a.getWidth() / this.a.getDensity());
                            i8 = i5;
                            i7 = i4;
                            i6 = width;
                            width = (int) (this.a.getHeight() / this.a.getDensity());
                        } catch (Exception e) {
                            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get current position");
                            try {
                                jSONObject.put("x", i5);
                                jSONObject.put("y", i4);
                                jSONObject.put("width", width);
                                jSONObject.put("height", 0);
                            } catch (JSONException e2) {
                            }
                        }
                    } catch (Throwable th2) {
                        i2 = i5;
                        i = i4;
                        i3 = width;
                        th = th2;
                        try {
                            jSONObject.put("x", i2);
                            jSONObject.put("y", i);
                            jSONObject.put("width", i3);
                            jSONObject.put("height", 0);
                            throw th;
                        } catch (JSONException e3) {
                            throw th;
                        }
                    }
                } catch (Exception e4) {
                    i4 = 0;
                } catch (Throwable th3) {
                    i2 = i5;
                    i = 0;
                    th = th3;
                    i3 = 0;
                    jSONObject.put("x", i2);
                    jSONObject.put("y", i);
                    jSONObject.put("width", i3);
                    jSONObject.put("height", 0);
                    throw th;
                }
            } else {
                i6 = 0;
                i7 = 0;
                i8 = 0;
            }
            try {
                jSONObject.put("x", i8);
                jSONObject.put("y", i7);
                jSONObject.put("width", i6);
                jSONObject.put("height", width);
            } catch (JSONException e5) {
            }
        } catch (Exception e6) {
            i4 = 0;
            i5 = 0;
        } catch (Throwable th4) {
            i = 0;
            i2 = 0;
            i3 = 0;
            th = th4;
        }
        synchronized (this.a.mutexcPos) {
            this.a.curPosition = jSONObject;
            this.a.acqMutexcPos.set(false);
            this.a.mutexcPos.notifyAll();
        }
    }

    public void getDefaultPosition() {
        int i;
        int i2;
        int i3;
        int width = 0;
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> getDefaultPosition");
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.a.isViewable()) {
                int[] iArr = new int[2];
                ((View) this.a.getOriginalParent()).getLocationOnScreen(iArr);
                i2 = iArr[0];
                try {
                    i = iArr[1];
                    try {
                        try {
                            width = (int) (((View) this.a.getOriginalParent()).getWidth() / this.a.getDensity());
                            i3 = width;
                            width = (int) (((View) this.a.getOriginalParent()).getHeight() / this.a.getDensity());
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get default position" + e.getMessage());
                            try {
                                jSONObject.put("x", i2);
                                jSONObject.put("y", i);
                                jSONObject.put("width", width);
                                jSONObject.put("height", 0);
                            } catch (JSONException e2) {
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            jSONObject.put("x", i2);
                            jSONObject.put("y", i);
                            jSONObject.put("width", width);
                            jSONObject.put("height", 0);
                        } catch (JSONException e3) {
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    i = 0;
                } catch (Throwable th2) {
                    th = th2;
                    i = 0;
                    jSONObject.put("x", i2);
                    jSONObject.put("y", i);
                    jSONObject.put("width", width);
                    jSONObject.put("height", 0);
                    throw th;
                }
            } else {
                i3 = 0;
                i = 0;
                i2 = 0;
            }
            try {
                jSONObject.put("x", i2);
                jSONObject.put("y", i);
                jSONObject.put("width", i3);
                jSONObject.put("height", width);
            } catch (JSONException e5) {
            }
        } catch (Exception e6) {
            e = e6;
            i = 0;
            i2 = 0;
        } catch (Throwable th3) {
            th = th3;
            i = 0;
            i2 = 0;
        }
        synchronized (this.a.mutexdPos) {
            this.a.defPosition = jSONObject;
            this.a.acqMutexdPos.set(false);
            this.a.mutexdPos.notifyAll();
        }
    }
}
