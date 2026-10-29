package com.inmobi.androidsdk;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.google.android.exoplayer.util.MimeTypes;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.Constants;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UseSparseArrays"})
@Instrumented
public class IMBrowserActivity extends Activity implements TraceFieldInterface {
    public static final String ANIMATED = "isAnimationEnabledOnDimiss";
    public static final int BROWSER_ACTIVITY = 100;
    public static final int CLOSE_BUTTON_VIEW_ID = 225;
    public static final int CLOSE_REGION_VIEW_ID = 226;
    public static final String EXPANDDATA = "data";
    public static final int EXPAND_ACTIVITY = 102;
    public static final String EXTRA_BROWSER_ACTIVITY_TYPE = "extra_browser_type";
    public static final String EXTRA_URL = "extra_url";
    public static final int GET_IMAGE = 101;
    public static final int INTERSTITIAL_ACTIVITY = 101;
    private static IMWebView b;
    private static IMWebView.IMWebViewListener c;
    private static IMWebView d;
    private static FrameLayout e;
    private static Message f;
    private static Map<Integer, StartActivityForResultCallback> l = new HashMap();
    private static int m = 0;
    private static Activity o;
    private IMWebView a;
    private RelativeLayout g;
    private float h;
    private Boolean i;
    private CustomView j;
    private int n;
    private long k = 0;
    private WebViewClient p = new WebViewClient() { // from class: com.inmobi.androidsdk.IMBrowserActivity.4
        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (IMBrowserActivity.this.j != null) {
                IMBrowserActivity.this.j.setSwitchInt(CustomView.SwitchIconType.FORWARD_INACTIVE);
                IMBrowserActivity.this.j.invalidate();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (IMBrowserActivity.this.j != null) {
                if (webView.canGoForward()) {
                    IMBrowserActivity.this.j.setSwitchInt(CustomView.SwitchIconType.FORWARD_ACTIVE);
                    IMBrowserActivity.this.j.invalidate();
                } else {
                    IMBrowserActivity.this.j.setSwitchInt(CustomView.SwitchIconType.FORWARD_INACTIVE);
                    IMBrowserActivity.this.j.invalidate();
                }
            }
            CookieSyncManager.getInstance().sync();
        }
    };

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    public static int generateId(StartActivityForResultCallback startActivityForResultCallback) {
        m++;
        l.put(Integer.valueOf(m), startActivityForResultCallback);
        return m;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        try {
            l.get(Integer.valueOf(i)).onActivityResult(i2, intent);
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "onActivityResult failed", e2);
        }
        l.remove(Integer.valueOf(i2));
        if (this.a == null) {
            finish();
        }
    }

    @Override // android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("IMBrowserActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "IMBrowserActivity#onCreate", null);
        } catch (NoSuchFieldError e2) {
            TraceMachine.enterMethod(null, "IMBrowserActivity#onCreate", null);
        }
        super.onCreate(bundle);
        try {
            CookieSyncManager.createInstance(this);
            CookieSyncManager.getInstance().startSync();
            Intent intent = getIntent();
            this.n = intent.getIntExtra(EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            this.k = intent.getLongExtra(ANIMATED, 0L);
            if (this.n == 100) {
                requestWindowFeature(1);
                if (Build.VERSION.SDK_INT < 9 || Build.VERSION.SDK_INT >= 11) {
                    getWindow().setFlags(1024, 1024);
                }
                WindowManager windowManager = (WindowManager) getSystemService("window");
                windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
                if (intent.getStringExtra("action") != null) {
                    a(intent);
                }
                this.h = getResources().getDisplayMetrics().density;
                String stringExtra = intent.getStringExtra(EXTRA_URL);
                this.i = Boolean.valueOf(intent.getBooleanExtra("FIRST_INSTANCE", false));
                Log.debug(Constants.RENDERING_LOG_TAG, "IMBrowserActivity-> onCreate");
                this.g = new RelativeLayout(this);
                if (stringExtra != null) {
                    boolean booleanExtra = intent.getBooleanExtra("QAMODE", false);
                    this.a = new IMWebView(this, c, true, true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                    layoutParams.addRule(10);
                    layoutParams.addRule(2, 100);
                    this.g.setBackgroundColor(-1);
                    this.g.addView(this.a, layoutParams);
                    a(this.g);
                    this.a.getSettings().setJavaScriptEnabled(true);
                    this.a.setExternalWebViewClient(this.p);
                    this.a.getSettings().setLoadWithOverviewMode(true);
                    this.a.getSettings().setUseWideViewPort(true);
                    if (Build.VERSION.SDK_INT >= 8) {
                        this.a.loadUrl(stringExtra, null);
                    } else {
                        this.a.loadUrl(stringExtra);
                    }
                    if (booleanExtra) {
                        HashMap map = new HashMap();
                        map.put("mk-carrier", "117.97.87.6");
                        map.put("x-real-ip", "117.97.87.6");
                    }
                    setContentView(this.g);
                }
            } else if (this.n == 101) {
                b.setActivity(this);
                b.mInterstitialController.setActivity(this);
                b.mInterstitialController.changeContentAreaForInterstitials(this.k);
                View viewFindViewById = findViewById(CLOSE_BUTTON_VIEW_ID);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                View viewFindViewById2 = findViewById(CLOSE_REGION_VIEW_ID);
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                b.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.6
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                        if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                            IMBrowserActivity.this.finish();
                        }
                        return false;
                    }
                });
            } else if (this.n == 102) {
                if (e != null && e.getParent() != null) {
                    ((ViewGroup) e.getParent()).removeView(e);
                }
                setContentView(e);
                d.setState(IMWebView.ViewState.EXPANDED);
                d.mIsViewable = true;
                d.mExpandController.setActivity(this);
                d.setBrowserActivity(this);
                d.mExpandController.handleOrientationForExpand();
                View viewFindViewById3 = findViewById(CLOSE_BUTTON_VIEW_ID);
                if (viewFindViewById3 != null) {
                    viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (IMBrowserActivity.d != null) {
                                IMBrowserActivity.d.close();
                            }
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                View viewFindViewById4 = findViewById(CLOSE_REGION_VIEW_ID);
                if (viewFindViewById4 != null) {
                    viewFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            if (IMBrowserActivity.d != null) {
                                IMBrowserActivity.d.close();
                            }
                            IMBrowserActivity.this.finish();
                        }
                    });
                }
                d.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.9
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(View view, int i, KeyEvent keyEvent) {
                        if (4 != keyEvent.getKeyCode() || keyEvent.getAction() != 0) {
                            return false;
                        }
                        if (IMBrowserActivity.d != null) {
                            IMBrowserActivity.d.close();
                        }
                        IMBrowserActivity.this.finish();
                        return true;
                    }
                });
            }
        } catch (Exception e3) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception rendering ad in ImBrowser Activity", e3);
        }
        TraceMachine.exitMethod();
    }

    public static void setWebview(IMWebView iMWebView) {
        if (iMWebView != null) {
            b = iMWebView;
        }
    }

    public static void setExpandedLayout(FrameLayout frameLayout) {
        if (frameLayout != null) {
            e = frameLayout;
        }
    }

    public static void setExpandedWebview(IMWebView iMWebView) {
        if (iMWebView != null) {
            d = iMWebView;
        }
    }

    public static void setOriginalActivity(Activity activity) {
        if (activity != null) {
            o = activity;
        }
    }

    private void a(int i, String str, String str2, String str3, int i2) {
        String str4;
        String str5;
        switch (i) {
            case 1:
                str4 = "";
                break;
            case 2:
                str4 = "com.google.android.apps.plus";
                break;
            case 3:
                str4 = "com.twitter.android";
                break;
            default:
                str4 = null;
                break;
        }
        String str6 = str + " " + str2 + " " + str3;
        Intent intent = new Intent();
        intent.setType("text/plain");
        intent.setPackage(str4);
        intent.putExtra("android.intent.extra.TEXT", str6);
        try {
            startActivityForResult(intent, i2);
        } catch (Exception e2) {
            try {
                switch (i) {
                    case 1:
                        str5 = "https://www.facebook.com/dialog/feed?app_id=181821551957328&link=" + URLEncoder.encode(str2, "UTF-8") + "&picture=" + URLEncoder.encode(str3, "UTF-8") + "&name=&description=" + URLEncoder.encode(str, "UTF-8") + "&redirect_uri=" + URLEncoder.encode(str2, "UTF-8");
                        break;
                    case 2:
                        str5 = "https://m.google.com/app/plus/x/?v=compose&content=" + URLEncoder.encode(str6, "UTF-8");
                        break;
                    case 3:
                        str5 = "http://twitter.com/home?status=" + URLEncoder.encode(str6, "UTF-8");
                        break;
                    default:
                        str5 = null;
                        break;
                }
            } catch (UnsupportedEncodingException e3) {
                Log.internal(Constants.RENDERING_LOG_TAG, "UTF-8 encoding not supported? What sorcery is this?", e3);
            }
            if (str5 != null) {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setData(Uri.parse(str5));
                try {
                    startActivityForResult(intent2, i2);
                    return;
                } catch (Exception e4) {
                    onActivityResult(i2, 0, null);
                    return;
                }
            }
            Intent intent3 = new Intent();
            intent3.setType("text/plain");
            intent3.putExtra("android.intent.extra.TEXT", str6);
            try {
                startActivityForResult(intent3, i2);
            } catch (Exception e5) {
                onActivityResult(i2, 0, null);
            }
        }
    }

    private void a(long j, long j2, String str, String str2, String str3, String str4, String str5, int i) {
        try {
            Intent intent = new Intent("android.intent.action.EDIT");
            intent.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
            intent.putExtra("beginTime", j);
            intent.putExtra("allDay", false);
            intent.putExtra("endTime", j2);
            intent.putExtra("title", str2);
            intent.putExtra("eventLocation", str);
            intent.putExtra("description", str3);
            if (str4.equals("transparent")) {
                intent.putExtra("availability", 1);
            } else if (str4.equals("opaque")) {
                intent.putExtra("availability", 0);
            }
            if (!"".equals(str5) && Build.VERSION.SDK_INT > 8) {
                StringBuilder sb = new StringBuilder();
                try {
                    JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str5);
                    String strOptString = jSONObjectInit.optString("frequency");
                    if (strOptString != null && !"".equals(strOptString)) {
                        if ("daily".equals(strOptString) || "weekly".equals(strOptString) || "monthly".equals(strOptString) || "yearly".equals(strOptString)) {
                            sb.append("freq=" + strOptString + ";");
                        }
                        String strOptString2 = jSONObjectInit.optString("interval");
                        if (strOptString2 != null) {
                            try {
                                if (!"".equals(strOptString2)) {
                                    sb.append("interval=" + Integer.parseInt(strOptString2) + ";");
                                }
                            } catch (Exception e2) {
                                if (this.a != null) {
                                    this.a.raiseError("Interval is incorrect in recurrence rule", "createCalendarEvent");
                                }
                                Log.internal(Constants.RENDERING_LOG_TAG, "Invalid interval in recurrence rule", e2);
                            }
                        }
                        String strA = a(jSONObjectInit.optString("expires"));
                        if (strA != null) {
                            sb.append("until=" + strA.replace("+", "Z+").replace("-", "Z-") + ";");
                        } else if (this.a != null) {
                            this.a.raiseError("Date format is incorrect in until", "createCalendarEvent");
                        }
                        String strA2 = a(jSONObjectInit.optJSONArray("daysInWeek"));
                        if (strA2 != null) {
                            sb.append("byday=" + strA2 + ";");
                        }
                        String strA3 = a(jSONObjectInit.optJSONArray("daysInMonth"), -30, 31);
                        if (strA3 != null) {
                            sb.append("bymonthday=" + strA3 + ";");
                        }
                        String strA4 = a(jSONObjectInit.optJSONArray("daysInYear"), -364, 365);
                        if (strA4 != null) {
                            sb.append("byyearday=" + strA4 + ";");
                        }
                        String strA5 = a(jSONObjectInit.optJSONArray("weeksInMonth"), -3, 4);
                        if (strA5 != null) {
                            sb.append("byweekno=" + strA5 + ";");
                        }
                        String strA6 = a(jSONObjectInit.optJSONArray("monthsInYear"), 1, 12);
                        if (strA6 != null) {
                            sb.append("bymonth=" + strA6 + ";");
                        }
                        Log.internal(Constants.RENDERING_LOG_TAG, "Recurrence rule : " + sb.toString());
                    } else {
                        if (this.a != null) {
                            this.a.raiseError("Frequency is incorrect in recurrence rule", "createCalendarEvent");
                        }
                        startActivityForResult(intent, i);
                        return;
                    }
                } catch (Exception e3) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e3);
                }
                if (!"".equals(sb.toString())) {
                    intent.putExtra("rrule", sb.toString());
                }
            }
            startActivityForResult(intent, i);
        } catch (Exception e4) {
            onActivityResult(i, 0, null);
        }
    }

    private String a(String str) {
        Date date;
        String str2 = null;
        if (str != null && !"".equals(str)) {
            SimpleDateFormat[] simpleDateFormatArr = JSUtilityController.formats;
            int length = simpleDateFormatArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    date = null;
                    break;
                }
                try {
                    date = simpleDateFormatArr[i].parse(str);
                    break;
                } catch (Exception e2) {
                    i++;
                }
            }
            for (SimpleDateFormat simpleDateFormat : JSUtilityController.calendarUntiFormats) {
                try {
                    str2 = simpleDateFormat.format(Long.valueOf(date.getTime()));
                    break;
                } catch (Exception e3) {
                }
            }
        }
        return str2;
    }

    private String a(JSONArray jSONArray, int i, int i2) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        int i4 = jSONArray.getInt(i3);
                        if (i4 >= i && i4 <= i2) {
                            sb.append(i4 + AppInfo.DELIM);
                        }
                    }
                    String string = sb.toString();
                    int length = string.length();
                    if (length == 0) {
                        return null;
                    }
                    try {
                        if (string.charAt(length - 1) == ',') {
                            return string.substring(0, length - 1);
                        }
                        return string;
                    } catch (Exception e2) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't parse json in create calendar event", e2);
                        return string;
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e3);
            }
        }
        return null;
    }

    private String a(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        sb.append(jSONArray.get(i) + AppInfo.DELIM);
                    }
                    String string = sb.toString();
                    int length = string.length();
                    if (length == 0) {
                        return null;
                    }
                    try {
                        if (string.charAt(length - 1) == ',') {
                            return string.substring(0, length - 1);
                        }
                        return string;
                    } catch (Exception e2) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't parse json in create calendar event", e2);
                        return string;
                    }
                    e.printStackTrace();
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e3);
            }
        }
        return null;
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra("action");
        int intExtra = intent.getIntExtra(AnalyticsEvent.EVENT_ID, 0);
        if (stringExtra.equals("takeCameraPicture")) {
            Uri uri = (Uri) intent.getExtras().get("URI");
            Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
            intent2.putExtra("output", uri);
            try {
                startActivityForResult(intent2, intExtra);
                return;
            } catch (Exception e2) {
                onActivityResult(intExtra, 0, null);
                return;
            }
        }
        if (stringExtra.equals("getGalleryImage")) {
            try {
                startActivityForResult(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), intExtra);
            } catch (Exception e3) {
                onActivityResult(intExtra, 0, null);
            }
        } else if (stringExtra.equals("postToSocial")) {
            a(intent.getIntExtra("socialType", 0), intent.getStringExtra(MimeTypes.BASE_TYPE_TEXT), intent.getStringExtra("link"), intent.getStringExtra("image"), intExtra);
        } else if (stringExtra.equals("createCalendarEvent")) {
            a(intent.getLongExtra("start", 0L), intent.getLongExtra("end", 0L), intent.getStringExtra("location"), intent.getStringExtra("description"), intent.getStringExtra("summary"), intent.getStringExtra("transparency"), intent.getStringExtra("recurrence"), intExtra);
        }
    }

    private void a(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setId(100);
        linearLayout.setWeightSum(100.0f);
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.10
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        linearLayout.setBackgroundResource(R.drawable.bottom_bar);
        linearLayout.setBackgroundColor(-7829368);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), (int) (44.0f * this.h));
        layoutParams.addRule(12);
        viewGroup.addView(linearLayout, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        layoutParams2.weight = 25.0f;
        CustomView customView = new CustomView(this, this.h, CustomView.SwitchIconType.CLOSE_ICON);
        linearLayout.addView(customView, layoutParams2);
        customView.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.11
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    IMBrowserActivity.this.finish();
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
        CustomView customView2 = new CustomView(this, this.h, CustomView.SwitchIconType.REFRESH);
        linearLayout.addView(customView2, layoutParams2);
        customView2.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.12
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    IMBrowserActivity.this.a.doHidePlayers();
                    IMBrowserActivity.this.a.reload();
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
        CustomView customView3 = new CustomView(this, this.h, CustomView.SwitchIconType.BACK);
        linearLayout.addView(customView3, layoutParams2);
        customView3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    if (IMBrowserActivity.this.a.canGoBack()) {
                        IMBrowserActivity.this.a.goBack();
                    } else {
                        IMBrowserActivity.this.finish();
                    }
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
        this.j = new CustomView(this, this.h, CustomView.SwitchIconType.FORWARD_INACTIVE);
        linearLayout.addView(this.j, layoutParams2);
        this.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.androidsdk.IMBrowserActivity.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    view.setBackgroundColor(-7829368);
                    if (IMBrowserActivity.this.a.canGoForward()) {
                        IMBrowserActivity.this.a.goForward();
                    }
                } else if (motionEvent.getAction() == 0) {
                    view.setBackgroundColor(-16711681);
                }
                return true;
            }
        });
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            CookieSyncManager.getInstance().stopSync();
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception pausing cookies");
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            CookieSyncManager.getInstance().startSync();
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception syncing cookies");
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            c = null;
            if (this.a != null) {
                this.a.mAudioVideoController.releaseAllPlayers();
            }
            if (f != null && this.i.booleanValue()) {
                f.sendToTarget();
                f = null;
            }
            if (b != null) {
                b.mAudioVideoController.releaseAllPlayers();
                b = null;
            }
            if (e != null && this.n == 102) {
                e = null;
            }
            if (d != null && this.n == 102) {
                d.setOnKeyListener(null);
                d = null;
            }
        } catch (Exception e2) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onDestroy ", e2);
        }
    }

    public static void requestOnAdDismiss(Message message) {
        f = message;
    }

    public static void setWebViewListener(IMWebView.IMWebViewListener iMWebViewListener) {
        c = iMWebViewListener;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (configuration.orientation == 2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
        } else {
            Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
        }
        if (this.a != null) {
            this.a.onOrientationEventChange();
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (d != null && this.n == 102) {
            d.close();
            finish();
        }
        super.onBackPressed();
    }
}
