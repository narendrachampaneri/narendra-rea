package com.inmobi.re.controller;

import android.R;
import android.annotation.SuppressLint;
import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Environment;
import android.os.Vibrator;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import com.amazon.device.ads.AdWebViewClient;
import com.amazon.identity.auth.device.dataobject.AppInfo;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.AudioTriggerCallback;
import com.inmobi.re.container.mraidimpl.AudioTriggerer;
import com.inmobi.re.controller.util.Constants;
import com.inmobi.re.controller.util.ImageProcessing;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JSUtilityController extends JSController {
    DownloadManager a;
    Object b;
    int c;
    private JSDisplayController d;
    private boolean e;
    private Map<String, Boolean> f;
    private AudioTriggerCallback g;
    private boolean h;
    private boolean i;
    public static SimpleDateFormat[] formats = {new SimpleDateFormat("yyyy-MM-dd'T'hh:mmZ", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssz", Locale.ENGLISH), new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH), new SimpleDateFormat("yyyyMMddHHmmssZ", Locale.ENGLISH), new SimpleDateFormat("yyyyMMddHHmm", Locale.ENGLISH), new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH), new SimpleDateFormat("yyyyMM", Locale.ENGLISH), new SimpleDateFormat("yyyy", Locale.ENGLISH)};
    public static SimpleDateFormat[] calendarUntiFormats = {new SimpleDateFormat("yyyyMMdd'T'HHmmssZ"), new SimpleDateFormat("yyyyMMdd'T'HHmm"), new SimpleDateFormat("yyyyMMdd")};

    public JSUtilityController(IMWebView iMWebView, Context context) {
        super(iMWebView, context);
        this.a = null;
        this.e = false;
        this.c = 0;
        this.f = new HashMap();
        this.g = new AudioTriggerCallback() { // from class: com.inmobi.re.controller.JSUtilityController.8
            @Override // com.inmobi.re.container.mraidimpl.AudioTriggerCallback
            public void audioLevel(double d) {
                JSUtilityController.this.imWebView.raiseMicEvent(d);
            }
        };
        this.h = false;
        this.i = false;
        this.d = new JSDisplayController(iMWebView, context);
        iMWebView.addJavascriptInterface(this.d, "displayController");
    }

    public void setWebViewClosed(boolean z) {
        this.e = z;
    }

    @SuppressLint({"NewApi"})
    public void registerBroadcastListener() {
        c();
        if (this.b == null && Build.VERSION.SDK_INT > 8) {
            try {
                if (this.a == null) {
                    this.a = (DownloadManager) this.imWebView.getActivity().getSystemService(AdTrackerConstants.GOAL_DOWNLOAD);
                }
                this.b = new BroadcastReceiver() { // from class: com.inmobi.re.controller.JSUtilityController.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        if ("android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                            long longExtra = intent.getLongExtra("extra_download_id", 0L);
                            DownloadManager.Query query = new DownloadManager.Query();
                            query.setFilterById(longExtra);
                            Cursor cursorQuery = JSUtilityController.this.a.query(query);
                            if (cursorQuery.moveToFirst()) {
                                int columnIndex = cursorQuery.getColumnIndex("status");
                                if (16 == cursorQuery.getInt(columnIndex)) {
                                    JSUtilityController.this.imWebView.raiseError("download failed", "storePicture");
                                } else {
                                    if (8 == cursorQuery.getInt(columnIndex)) {
                                    }
                                }
                            }
                        }
                    }
                };
                if (!this.e) {
                    this.imWebView.getActivity().registerReceiver((BroadcastReceiver) this.b, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
                } else {
                    this.b = null;
                }
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "JSUtilityController-> registerBroadcastListener. Unable to register download listener", e);
            }
        }
    }

    @SuppressLint({"NewApi"})
    public void unRegisterBroadcastListener() {
        try {
            d();
            if (Build.VERSION.SDK_INT > 8) {
                this.imWebView.getActivity().unregisterReceiver((BroadcastReceiver) this.b);
                this.b = null;
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "JSUtilityController-> unregisterBroadcastListener. Unable to unregister download listener");
        }
    }

    @JavascriptInterface
    public void sendSMS(String str, String str2) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(27), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> sendSMS: recipient: " + str + " body: " + str2);
        try {
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + Uri.encode(str)));
            intent.putExtra("sms_body", str2);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.imWebView.getActivity().startActivity(intent);
            this.imWebView.fireOnLeaveApplication();
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in sending SMS ", e);
            this.imWebView.raiseError("Exception in sending SMS", "sendSMS");
        }
    }

    @JavascriptInterface
    public void sendMail(String str, String str2, String str3) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(28), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> sendMail: recipient: " + str + " subject: " + str2 + " body: " + str3);
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{str});
            intent.putExtra("android.intent.extra.SUBJECT", str2);
            intent.putExtra("android.intent.extra.TEXT", str3);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.imWebView.getActivity().startActivity(Intent.createChooser(intent, "Choose the Email Client."));
            this.imWebView.fireOnLeaveApplication();
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in sending mail ", e);
            this.imWebView.raiseError("Exception in sending mail", "sendMail");
        }
    }

    private String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("tel:")) {
            return "tel:" + str;
        }
        return str;
    }

    @JavascriptInterface
    public void makeCall(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(29), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> makeCall: number: " + str);
        try {
            String strB = b(str);
            if (strB == null) {
                this.imWebView.raiseError("Bad Phone Number", "makeCall");
            } else {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strB.toString()));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.imWebView.getActivity().startActivity(intent);
                this.imWebView.fireOnLeaveApplication();
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in making call ", e);
            this.imWebView.raiseError("Exception in making call", "makeCall");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a() {
        Cursor cursorQuery;
        String[] strArr = {AnalyticsSQLiteHelper.GENERAL_ID, "title"};
        if (Build.VERSION.SDK_INT >= 8) {
            cursorQuery = this.imWebView.getActivity().getContentResolver().query(Uri.parse("content://com.android.calendar/events"), strArr, null, null, null);
        } else {
            cursorQuery = this.imWebView.getActivity().getContentResolver().query(Uri.parse("content://calendar/events"), strArr, null, null, null);
        }
        if (cursorQuery != null && cursorQuery.moveToLast()) {
            int columnIndex = cursorQuery.getColumnIndex("title");
            int columnIndex2 = cursorQuery.getColumnIndex(AnalyticsSQLiteHelper.GENERAL_ID);
            String string = cursorQuery.getString(columnIndex);
            String string2 = cursorQuery.getString(columnIndex2);
            if (string != null) {
                return Integer.parseInt(string2);
            }
        }
        return 0;
    }

    boolean a(String str) {
        PackageManager packageManager = this.imWebView.getActivity().getPackageManager();
        return packageManager.checkPermission(str, packageManager.getNameForUid(Binder.getCallingUid())) == 0;
    }

    @JavascriptInterface
    public void createCalendarEvent(String str, final String str2, String str3, String str4, String str5, String str6, final String str7, String str8, String str9, final String str10) {
        try {
            if (a("android.permission.READ_CALENDAR") && a("android.permission.WRITE_CALENDAR")) {
                this.c = a();
            }
            ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(30), null));
            Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> createEvent: date: " + str2 + " location: " + str4 + " body: " + str5);
            if (!supports("calendar")) {
                Log.internal(Constants.RENDERING_LOG_TAG, "createCalendarEvent called even if it is not supported");
                this.imWebView.raiseError("createCalendarEvent called even if it is not supported", "createCalendarEvent");
                return;
            }
            GregorianCalendar gregorianCalendarConvertDateString = convertDateString(str2);
            GregorianCalendar gregorianCalendarConvertDateString2 = convertDateString(str3);
            if (gregorianCalendarConvertDateString == null || gregorianCalendarConvertDateString2 == null) {
                Log.debug(Constants.RENDERING_LOG_TAG, "exception");
                this.imWebView.raiseError("Date format is incorrect", "createCalendarEvent");
                return;
            }
            Intent intent = new Intent(this.imWebView.getActivity(), (Class<?>) IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            intent.putExtra(AnalyticsEvent.EVENT_ID, IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.2
                @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
                public void onActivityResult(int i, Intent intent2) {
                    Uri uri;
                    int timeInMillis;
                    Uri uri2;
                    try {
                        if (JSUtilityController.this.a("android.permission.READ_CALENDAR") && JSUtilityController.this.a("android.permission.WRITE_CALENDAR")) {
                            if (JSUtilityController.this.c == JSUtilityController.this.a()) {
                                Log.internal(Constants.RENDERING_LOG_TAG, "User cancelled the create calendar event");
                                return;
                            }
                            if (Build.VERSION.SDK_INT >= 8) {
                                uri = Uri.parse("content://com.android.calendar/events");
                            } else {
                                uri = Uri.parse("content://calendar/events");
                            }
                            ContentResolver contentResolver = JSUtilityController.this.imWebView.getActivity().getContentResolver();
                            ContentValues contentValues = new ContentValues();
                            if (str7.equals("tentative")) {
                                contentValues.put("eventStatus", (Integer) 0);
                            } else if (str7.equals("confirmed")) {
                                contentValues.put("eventStatus", (Integer) 1);
                            } else if (str7.equals("cancelled")) {
                                contentValues.put("eventStatus", (Integer) 2);
                            }
                            contentResolver.update(ContentUris.withAppendedId(uri, JSUtilityController.this.a()), contentValues, null, null);
                            if (str10 != null && !"".equals(str10)) {
                                try {
                                    timeInMillis = Integer.parseInt(str10) / TraceMachine.UNHEALTHY_TRACE_TIMEOUT;
                                } catch (NumberFormatException e) {
                                    try {
                                        timeInMillis = ((int) (JSUtilityController.convertDateString(str10).getTimeInMillis() - JSUtilityController.convertDateString(str2).getTimeInMillis())) / TraceMachine.UNHEALTHY_TRACE_TIMEOUT;
                                    } catch (Exception e2) {
                                        JSUtilityController.this.imWebView.raiseError("Reminder format is incorrect. Invalid date", "createCalendarEvent");
                                        return;
                                    }
                                }
                                if (timeInMillis > 0) {
                                    JSUtilityController.this.imWebView.raiseError("Reminder format is incorrect. Reminder can be set only before the event starts", "createCalendarEvent");
                                    return;
                                }
                                int i2 = -timeInMillis;
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("hasAlarm", (Integer) 1);
                                contentResolver.update(ContentUris.withAppendedId(uri, JSUtilityController.this.a()), contentValues2, null, null);
                                if (Build.VERSION.SDK_INT >= 8) {
                                    uri2 = Uri.parse("content://com.android.calendar/reminders");
                                } else {
                                    uri2 = Uri.parse("content://calendar/reminders");
                                }
                                ContentValues contentValues3 = new ContentValues();
                                contentValues3.put("event_id", Integer.valueOf(JSUtilityController.this.a()));
                                contentValues3.put("method", (Integer) 1);
                                contentValues3.put("minutes", Integer.valueOf(i2));
                                contentResolver.insert(uri2, contentValues3);
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        Log.internal(Constants.RENDERING_LOG_TAG, "Exception adding reminder", e3);
                    }
                }
            }));
            intent.putExtra("eventId", str);
            intent.putExtra("action", "createCalendarEvent");
            intent.putExtra("description", str5);
            intent.putExtra("summary", str6);
            intent.putExtra("location", str4);
            intent.putExtra("start", gregorianCalendarConvertDateString.getTimeInMillis());
            intent.putExtra("end", gregorianCalendarConvertDateString2.getTimeInMillis());
            intent.putExtra("status", str7);
            intent.putExtra("transparency", str8);
            intent.putExtra("recurrence", str9);
            if (str10 != null && !"".equals(str10)) {
                intent.putExtra("hasAlarm", true);
            }
            this.imWebView.getActivity().startActivity(intent);
            if (this.imWebView.mListener != null) {
                this.imWebView.mListener.onLeaveApplication();
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Error creating reminder event", e);
        }
    }

    public static GregorianCalendar convertDateString(String str) {
        for (SimpleDateFormat simpleDateFormat : formats) {
            try {
                Date date = simpleDateFormat.parse(str);
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTime(date);
                return gregorianCalendar;
            } catch (Exception e) {
            }
        }
        return null;
    }

    @Override // com.inmobi.re.controller.JSController
    public void stopAllListeners() {
        try {
            this.d.stopAllListeners();
        } catch (Exception e) {
        }
    }

    @JavascriptInterface
    public void showAlert(String str) {
        Log.debug(Constants.RENDERING_LOG_TAG, str);
    }

    @JavascriptInterface
    public void log(String str) {
        Log.debug(Constants.RENDERING_LOG_TAG, "Ad Log Message: " + str);
    }

    @JavascriptInterface
    public void asyncPing(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(31), null));
        try {
            Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> asyncPing: url: " + str);
            if (!URLUtil.isValidUrl(str)) {
                this.imWebView.raiseError("Invalid url", "asyncPing");
            } else {
                c(str);
            }
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.inmobi.re.controller.JSUtilityController$3] */
    private void c(final String str) {
        new Thread() { // from class: com.inmobi.re.controller.JSUtilityController.3
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v0 */
            /* JADX WARN: Type inference failed for: r1v1 */
            /* JADX WARN: Type inference failed for: r1v14 */
            /* JADX WARN: Type inference failed for: r1v15 */
            /* JADX WARN: Type inference failed for: r1v16 */
            /* JADX WARN: Type inference failed for: r1v17 */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.net.HttpURLConnection] */
            /* JADX WARN: Type inference failed for: r1v4 */
            /* JADX WARN: Type inference failed for: r1v7 */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws Throwable {
                ?? r1 = 0;
                HttpURLConnection httpURLConnection = null;
                try {
                    try {
                        String strReplaceAll = str.replaceAll("%25", "%");
                        Log.debug(Constants.RENDERING_LOG_TAG, "Pinging URL: " + strReplaceAll);
                        HttpURLConnection httpURLConnection2 = (HttpURLConnection) HttpInstrumentation.openConnection(new URL(strReplaceAll).openConnection());
                        try {
                            httpURLConnection2.setConnectTimeout(20000);
                            httpURLConnection2.setRequestMethod("GET");
                            httpURLConnection2.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
                            String str2 = Constants.RENDERING_LOG_TAG;
                            Log.debug(Constants.RENDERING_LOG_TAG, "Async Ping Connection Response Code: " + httpURLConnection2.getResponseCode());
                            r1 = str2;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                                r1 = str2;
                            }
                        } catch (Exception e) {
                            httpURLConnection = httpURLConnection2;
                            e = e;
                            Log.debug(Constants.RENDERING_LOG_TAG, "Error doing async Ping. ", e);
                            r1 = httpURLConnection;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                                r1 = httpURLConnection;
                            }
                        } catch (Throwable th) {
                            r1 = httpURLConnection2;
                            th = th;
                            if (r1 != 0) {
                                r1.disconnect();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            }
        }.start();
    }

    @JavascriptInterface
    public void playAudio(String str, boolean z, boolean z2, boolean z3, String str2, String str3, String str4) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(32), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "playAudio: url: " + str + " autoPlay: " + z + " controls: " + z2 + " loop: " + z3 + " startStyle: " + str2 + " stopStyle: " + str3 + " id:" + str4);
        this.imWebView.playAudio(str, z, z2, z3, str2, str3, str4);
    }

    @JavascriptInterface
    public void muteAudio(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(33), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> muteAudio: ");
        this.imWebView.muteAudio(str);
    }

    @JavascriptInterface
    public void unMuteAudio(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(34), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> unMuteAudio: ");
        this.imWebView.unMuteAudio(str);
    }

    @JavascriptInterface
    public boolean isAudioMuted(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(35), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> isAudioMuted: ");
        return this.imWebView.isAudioMuted(str);
    }

    @JavascriptInterface
    public void setAudioVolume(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(36), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> setAudioVolume: " + str + " " + i);
        this.imWebView.setAudioVolume(str, i);
    }

    @JavascriptInterface
    public int getAudioVolume(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(37), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getAudioVolume: ");
        return this.imWebView.getAudioVolume(str);
    }

    @JavascriptInterface
    public void seekAudio(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(38), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> seekAudio: ");
        this.imWebView.seekAudio(str, i);
    }

    @JavascriptInterface
    public double getMicIntensity() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(51), null));
        return this.imWebView.getLastGoodKnownMicValue();
    }

    @JavascriptInterface
    public void playVideo(String str, boolean z, boolean z2, boolean z3, boolean z4, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(40), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> playVideo: url: " + str + " audioMuted: " + z + " autoPlay: " + z2 + " controls: " + z3 + " loop: " + z4 + " x: " + str2 + " y: " + str3 + " width: " + str4 + " height: " + str5 + " startStyle: " + str6 + " stopStyle: " + str7 + " id:" + str8);
        JSController.Dimensions dimensions = new JSController.Dimensions();
        dimensions.x = a(str2, -99999);
        dimensions.y = a(str3, -99999);
        dimensions.width = a(str4, -99999);
        dimensions.height = a(str5, -99999);
        if (dimensions.width == -99999 && dimensions.height == -99999) {
            int[] iArrB = b();
            dimensions.x = 0;
            dimensions.y = 0;
            dimensions.width = iArrB[0];
            dimensions.height = iArrB[1];
        }
        this.imWebView.playVideo(str, z, z2, z3, z4, dimensions, str6, str7, str8);
    }

    private int a(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    @JavascriptInterface
    public void pauseAudio(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(39), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> pauseAudio: id :" + str);
        this.imWebView.pauseAudio(str);
    }

    @JavascriptInterface
    public void pauseVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(47), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> pauseVideo: id :" + str);
        this.imWebView.pauseVideo(str);
    }

    @JavascriptInterface
    public void closeVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(50), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> closeVideo: id :" + str);
        this.imWebView.closeVideo(str);
    }

    @JavascriptInterface
    public void hideVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(48), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> hideVideo: id :" + str);
        this.imWebView.hideVideo(str);
    }

    @JavascriptInterface
    public void showVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(49), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> showVideo: id :" + str);
        this.imWebView.showVideo(str);
    }

    @JavascriptInterface
    public void muteVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(41), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> muteVideo: ");
        this.imWebView.muteVideo(str);
    }

    @JavascriptInterface
    public void unMuteVideo(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(42), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> unMuteVideo: ");
        this.imWebView.unMuteVideo(str);
    }

    @JavascriptInterface
    public void seekVideo(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(46), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> seekVideo: ");
        this.imWebView.seekVideo(str, i);
    }

    @JavascriptInterface
    public boolean isVideoMuted(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(43), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> isVideoMuted: ");
        return this.imWebView.isVideoMuted(str);
    }

    @JavascriptInterface
    public void setVideoVolume(String str, int i) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(44), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> setVideoVolume: ");
        this.imWebView.setVideoVolume(str, i);
    }

    @JavascriptInterface
    public int getVideoVolume(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(45), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getVideoVolume: ");
        return this.imWebView.getVideoVolume(str);
    }

    @JavascriptInterface
    public void openExternal(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(2), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> openExternal: url: " + str);
        this.imWebView.openExternal(str);
    }

    @JavascriptInterface
    public String getScreenSize() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(17), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getScreenSize");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = (int) (displayMetrics.widthPixels / displayMetrics.density);
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", i);
            jSONObject.put("height", i2);
        } catch (JSONException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get screen size");
        }
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    @JavascriptInterface
    public String getCurrentPosition() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(18), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getCurrentPosition");
        synchronized (this.imWebView.mutexcPos) {
            this.imWebView.sendToCPHandler();
            while (this.imWebView.acqMutexcPos.get()) {
                try {
                    this.imWebView.mutexcPos.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutexcPos failed ", e);
                }
            }
            this.imWebView.acqMutexcPos.set(true);
        }
        JSONObject jSONObject = this.imWebView.curPosition;
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    @JavascriptInterface
    public String getDefaultPosition() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(19), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSUtilityController-> getDefaultPosition");
        synchronized (this.imWebView.mutexdPos) {
            this.imWebView.sendToDPHandler();
            while (this.imWebView.acqMutexdPos.get()) {
                try {
                    this.imWebView.mutexdPos.wait();
                } catch (InterruptedException e) {
                    Log.debug(Constants.RENDERING_LOG_TAG, "mutexdPos failed ", e);
                }
            }
            this.imWebView.acqMutexdPos.set(true);
        }
        Log.debug(Constants.RENDERING_LOG_TAG, "mutexdPassed" + this.imWebView.defPosition);
        JSONObject jSONObject = this.imWebView.defPosition;
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    private int[] b() {
        int[] iArr = new int[2];
        try {
            FrameLayout frameLayout = (FrameLayout) ((ViewGroup) this.imWebView.getOriginalParent()).getRootView().findViewById(R.id.content);
            iArr[0] = (int) (frameLayout.getWidth() / this.imWebView.getDensity());
            iArr[1] = (int) (frameLayout.getHeight() / this.imWebView.getDensity());
        } catch (Exception e) {
            iArr[1] = 0;
            iArr[0] = 0;
        }
        return iArr;
    }

    @JavascriptInterface
    public String getMaxSize() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(20), null));
        int[] iArrB = b();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", iArrB[0]);
            jSONObject.put("height", iArrB[1]);
        } catch (JSONException e) {
        }
        return !(jSONObject instanceof JSONObject) ? jSONObject.toString() : JSONObjectInstrumentation.toString(jSONObject);
    }

    @JavascriptInterface
    public void postToSocial(int i, String str, String str2, String str3) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(21), null));
        if (!supports("postToSocial." + i)) {
            this.imWebView.raiseError("Social type " + i + " is not supported.", "postToSocial");
            return;
        }
        String str4 = str == null ? "" : str;
        if (str2 == null) {
            str4 = "";
        }
        if (str3 == null) {
            str3 = "";
        }
        Intent intent = new Intent(this.imWebView.getActivity(), (Class<?>) IMBrowserActivity.class);
        int iGenerateId = IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.4
            @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
            public void onActivityResult(int i2, Intent intent2) {
            }
        });
        intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
        intent.putExtra(AnalyticsEvent.EVENT_ID, iGenerateId);
        intent.putExtra("action", "postToSocial");
        intent.putExtra("socialType", i);
        intent.putExtra(MimeTypes.BASE_TYPE_TEXT, str4);
        intent.putExtra("link", str2);
        intent.putExtra("image", str3);
        this.imWebView.getActivity().startActivity(intent);
        if (this.imWebView.mListener != null) {
            this.imWebView.mListener.onLeaveApplication();
        }
    }

    @SuppressLint({"NewApi"})
    public boolean supports(String str) {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Boolean bool;
        Boolean boolValueOf3;
        Boolean bool2;
        Boolean bool3;
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(22), null));
        if (str.equals("html5video") || str.equals("inlineVideo")) {
            if (Build.VERSION.SDK_INT >= 11) {
                boolValueOf = Boolean.valueOf(this.imWebView.isHardwareAccelerated() && this.imWebView.isEnabledHardwareAcceleration());
            } else {
                boolValueOf = true;
            }
            this.f.put(str, boolValueOf);
            return boolValueOf.booleanValue();
        }
        Boolean bool4 = this.f.get(str);
        if (bool4 != null) {
            return bool4.booleanValue();
        }
        PackageManager packageManager = this.imWebView.getActivity().getPackageManager();
        if (str.equals(AdWebViewClient.TELEPHONE)) {
            this.f.put(str, true);
            return true;
        }
        if (str.equals(AdWebViewClient.SMS)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setType("vnd.android-dir/mms-sms");
            if (this.imWebView.getActivity().getPackageManager().resolveActivity(intent, 65536) == null) {
                bool3 = false;
            } else {
                bool3 = true;
            }
            this.f.put(str, bool3);
            return bool3.booleanValue();
        }
        if (str.equals("calendar")) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setType(MraidNativeCommandHandler.ANDROID_CALENDAR_CONTENT_TYPE);
            if (this.imWebView.getActivity().getPackageManager().resolveActivity(intent2, 65536) == null) {
                bool2 = false;
            } else {
                bool2 = true;
            }
            this.f.put(str, bool2);
            return bool2.booleanValue();
        }
        if (str.equals("microphone")) {
            Boolean boolValueOf4 = Boolean.valueOf(packageManager.checkPermission("android.permission.RECORD_AUDIO", packageManager.getNameForUid(Binder.getCallingUid())) == 0);
            this.f.put(str, boolValueOf4);
            return boolValueOf4.booleanValue();
        }
        if (str.equals("storePicture")) {
            Boolean boolValueOf5 = Boolean.valueOf(Build.VERSION.SDK_INT > 8 && packageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", packageManager.getNameForUid(Binder.getCallingUid())) == 0);
            this.f.put(str, boolValueOf5);
            return boolValueOf5.booleanValue();
        }
        if (str.equals("postToSocial.2") || str.equals("postToSocial.3")) {
            Boolean bool5 = true;
            this.f.put(str, bool5);
            return bool5.booleanValue();
        }
        if (str.equals("takeCameraPicture")) {
            ResolveInfo resolveInfoResolveActivity = this.imWebView.getActivity().getPackageManager().resolveActivity(new Intent("android.media.action.IMAGE_CAPTURE"), 65536);
            boolean z = packageManager.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", packageManager.getNameForUid(Binder.getCallingUid())) == 0;
            if (resolveInfoResolveActivity == null) {
                boolValueOf3 = false;
            } else {
                boolValueOf3 = Boolean.valueOf(z);
            }
            this.f.put(str, boolValueOf3);
            return boolValueOf3.booleanValue();
        }
        if (str.equals("getGalleryImage")) {
            if (this.imWebView.getActivity().getPackageManager().resolveActivity(new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 65536) == null) {
                bool = false;
            } else {
                bool = true;
            }
            this.f.put(str, bool);
            return bool.booleanValue();
        }
        if (!str.equals("vibrate")) {
            return false;
        }
        Boolean boolValueOf6 = Boolean.valueOf(packageManager.checkPermission("android.permission.VIBRATE", packageManager.getNameForUid(Binder.getCallingUid())) == 0);
        Vibrator vibrator = (Vibrator) this.d.imWebView.getActivity().getSystemService("vibrator");
        if (vibrator == null) {
            boolValueOf2 = false;
        } else if (Build.VERSION.SDK_INT >= 11) {
            boolValueOf2 = Boolean.valueOf(boolValueOf6.booleanValue() && vibrator.hasVibrator());
        } else {
            boolValueOf2 = boolValueOf6;
        }
        this.f.put(str, boolValueOf2);
        return boolValueOf2.booleanValue();
    }

    @JavascriptInterface
    public String supportsFeature(String str) {
        return String.valueOf(supports(str));
    }

    @JavascriptInterface
    @SuppressLint({"NewApi"})
    public void storePicture(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(23), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "Store picture called on URL: " + str);
        try {
            Uri uri = Uri.parse(InternalSDKUtil.getFinalRedirectedUrl(str));
            if (supports("storePicture")) {
                try {
                    DownloadManager.Request request = new DownloadManager.Request(uri);
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, uri.getLastPathSegment());
                    this.a.enqueue(request);
                } catch (Exception e) {
                    this.imWebView.raiseError("Unable to store.", "storePicture");
                }
            }
        } catch (Exception e2) {
            this.imWebView.raiseError("Invalid URL.", "storePicture");
        }
    }

    @JavascriptInterface
    public String takeCameraPicture() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(24), null));
        if (!supports("takeCameraPicture")) {
            Log.internal(Constants.RENDERING_LOG_TAG, "takeCameraPicture called even if it is not supported");
        } else {
            Intent intent = new Intent(this.imWebView.getActivity(), (Class<?>) IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            final Uri uriInsert = this.mContext.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new ContentValues());
            intent.putExtra(AnalyticsEvent.EVENT_ID, IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.5
                @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
                public void onActivityResult(int i, Intent intent2) {
                    String strConvertMediaUriToPath;
                    if (i == -1) {
                        if (intent2 == null) {
                            strConvertMediaUriToPath = ImageProcessing.convertMediaUriToPath(uriInsert, JSUtilityController.this.mContext);
                        } else {
                            strConvertMediaUriToPath = ImageProcessing.convertMediaUriToPath(intent2.getData(), JSUtilityController.this.mContext);
                        }
                        Bitmap compressedBitmap = ImageProcessing.getCompressedBitmap(strConvertMediaUriToPath, JSUtilityController.this.mContext);
                        int width = compressedBitmap.getWidth();
                        int height = compressedBitmap.getHeight();
                        JSUtilityController.this.imWebView.raiseCameraPictureCapturedEvent(ImageProcessing.getBase64EncodedImage(compressedBitmap, JSUtilityController.this.mContext), width, height);
                        return;
                    }
                    JSUtilityController.this.imWebView.raiseError("User did not take a picture", "takeCameraPicture");
                }
            }));
            intent.putExtra("URI", uriInsert);
            intent.putExtra("action", "takeCameraPicture");
            this.imWebView.getActivity().startActivity(intent);
            if (this.imWebView.mListener != null) {
                this.imWebView.mListener.onLeaveApplication();
            }
        }
        return null;
    }

    @JavascriptInterface
    public String getSdkVersion() {
        return InMobi.getVersion();
    }

    @JavascriptInterface
    public String getGalleryImage() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(25), null));
        if (!supports("getGalleryImage")) {
            Log.internal(Constants.RENDERING_LOG_TAG, "getGalleryImage called even if it is not supported");
        } else {
            Intent intent = new Intent(this.imWebView.getActivity(), (Class<?>) IMBrowserActivity.class);
            intent.putExtra(IMBrowserActivity.EXTRA_BROWSER_ACTIVITY_TYPE, 100);
            intent.putExtra(AnalyticsEvent.EVENT_ID, IMBrowserActivity.generateId(new StartActivityForResultCallback() { // from class: com.inmobi.re.controller.JSUtilityController.6
                @Override // com.inmobi.re.controller.util.StartActivityForResultCallback
                public void onActivityResult(int i, Intent intent2) {
                    if (i == -1) {
                        Bitmap compressedBitmap = ImageProcessing.getCompressedBitmap(ImageProcessing.convertMediaUriToPath(intent2.getData(), JSUtilityController.this.mContext), JSUtilityController.this.mContext);
                        int width = compressedBitmap.getWidth();
                        int height = compressedBitmap.getHeight();
                        JSUtilityController.this.imWebView.raiseGalleryImageSelectedEvent(ImageProcessing.getBase64EncodedImage(compressedBitmap, JSUtilityController.this.mContext), width, height);
                        return;
                    }
                    JSUtilityController.this.imWebView.raiseError("User did not select a picture", "getGalleryImage");
                }
            }));
            intent.putExtra("action", "getGalleryImage");
            this.imWebView.getActivity().startActivity(intent);
            if (this.imWebView.mListener != null) {
                this.imWebView.mListener.onLeaveApplication();
            }
        }
        return null;
    }

    @JavascriptInterface
    public void vibrate() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(26), null));
        if (!this.imWebView.isViewable()) {
            this.imWebView.raiseError("Creative not visible. Will not vibrate.", "vibrate");
        } else if (supports("vibrate")) {
            ((Vibrator) this.imWebView.getActivity().getSystemService("vibrator")).vibrate(2000L);
            new Timer().schedule(new TimerTask() { // from class: com.inmobi.re.controller.JSUtilityController.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    try {
                        JSUtilityController.this.imWebView.raiseVibrateCompleteEvent();
                    } catch (Exception e) {
                        Log.internal(Constants.RENDERING_LOG_TAG, "Vibrate callback execption", e);
                    }
                }
            }, 2000L);
        } else {
            Log.internal(Constants.RENDERING_LOG_TAG, "vibrate called even if it is not supported");
        }
    }

    @JavascriptInterface
    public void vibrate(String str, int i) {
        int maxVibPatternLength;
        try {
            ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(26), null));
            if (!this.imWebView.isViewable()) {
                this.imWebView.raiseError("Creative not visible. Will not vibrate.", "vibrate");
                return;
            }
            if (supports("vibrate")) {
                Vibrator vibrator = (Vibrator) this.imWebView.getActivity().getSystemService("vibrator");
                String strReplaceAll = str.replaceAll("\\[", "").replaceAll("\\]", "");
                if (strReplaceAll == null || "".equals(strReplaceAll.trim())) {
                    vibrator.cancel();
                    return;
                }
                String[] strArrSplit = strReplaceAll.split(AppInfo.DELIM);
                int length = strArrSplit.length;
                if (length > Initializer.getConfigParams().getMaxVibPatternLength()) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "vibration pattern exceeds max length. Will be truncated to max " + Initializer.getConfigParams().getMaxVibPatternLength() + "ms");
                    maxVibPatternLength = Initializer.getConfigParams().getMaxVibPatternLength();
                } else {
                    maxVibPatternLength = length;
                }
                long[] jArr = new long[maxVibPatternLength];
                for (int i2 = 0; i2 < maxVibPatternLength; i2++) {
                    try {
                        jArr[i2] = Long.parseLong(strArrSplit[i2]);
                        if (jArr[i2] > Initializer.getConfigParams().getMaxVibDuration()) {
                            Log.internal(Constants.RENDERING_LOG_TAG, "vibration duration exceeds max. Will only vibrate for max " + Initializer.getConfigParams().getMaxVibDuration() + "ms");
                            jArr[i2] = Initializer.getConfigParams().getMaxVibDuration();
                        }
                        if (jArr[i2] < 0) {
                            this.imWebView.raiseError("Negative duration not allowed in vibration .", "vibrate");
                        }
                    } catch (NumberFormatException e) {
                        this.imWebView.raiseError("Invalid values of pattern in vibration .", "vibrate");
                        return;
                    }
                }
                if (jArr != null && jArr.length != 0) {
                    vibrator.vibrate(jArr, i);
                    return;
                }
                return;
            }
            this.imWebView.raiseError("Vibrate called even if it is not supported.", "vibrate");
            Log.internal(Constants.RENDERING_LOG_TAG, "vibrate called even if it is not supported");
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "vibrate exception", e2);
        }
    }

    @JavascriptInterface
    public void registerMicListener() {
        if (!this.h) {
            this.h = true;
            AudioTriggerer.addEventListener(this.g);
        }
    }

    @JavascriptInterface
    public void unRegisterMicListener() {
        if (this.h) {
            this.h = false;
            AudioTriggerer.removeEventListener(this.g);
        }
    }

    private void c() {
        if (this.i) {
            registerMicListener();
        }
    }

    private void d() {
        this.i = this.h;
        unRegisterMicListener();
    }

    public void reset() {
        if (this.d != null) {
            this.d.reset();
        }
    }

    @JavascriptInterface
    public void onUserInteraction(String str) {
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str);
            HashMap<String, String> map = new HashMap<>();
            Iterator<String> itKeys = jSONObjectInit.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    map.put(next, jSONObjectInit.getString(next));
                } catch (JSONException e) {
                }
            }
            this.imWebView.userInteraction(map);
        } catch (Exception e2) {
        }
    }

    @JavascriptInterface
    public void saveContent(String str, String str2) {
        File file = new File(InternalSDKUtil.getContext().getExternalFilesDir(null) + "/im_cached_content/");
        if (file.exists()) {
            file.delete();
        }
        file.mkdir();
        char[] charArray = "abcdefghijklmnopqrstuvwxyz".toCharArray();
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 20; i++) {
            sb.append(charArray[random.nextInt(charArray.length)]);
        }
        this.imWebView.saveFile(new File(file, sb.toString()), str2, str);
    }

    @JavascriptInterface
    public void cancelSaveContent(String str) {
        this.imWebView.cancelSaveContent(str);
    }

    @JavascriptInterface
    public void incentCompleted(String str) {
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str);
            HashMap<Object, Object> map = new HashMap<>();
            Iterator<String> itKeys = jSONObjectInit.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    map.put(next, jSONObjectInit.get(next));
                } catch (JSONException e) {
                    this.imWebView.incentCompleted(null);
                    return;
                }
            }
            this.imWebView.incentCompleted(map);
        } catch (JSONException e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "JSON error");
            this.imWebView.incentCompleted(null);
        }
    }

    @JavascriptInterface
    public void setPlayableSettings(String str) {
        try {
            JSONObject jSONObjectInit = JSONObjectInstrumentation.init(str);
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObjectInit.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    map.put(next, jSONObjectInit.get(next));
                } catch (JSONException e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Playable Ads Settings map key " + next + " has invalid value");
                }
            }
            this.imWebView.getPlayableListener().onPlayableSettingsReceived(map);
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception setting playable settings", e2);
        }
    }
}
