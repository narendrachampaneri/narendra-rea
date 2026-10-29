package com.inmobi.commons.analytics.iat.impl.net;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerUtils;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.GoalList;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.newrelic.agent.android.instrumentation.HttpInstrumentation;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class AdTrackerNetworkInterface {
    private static GoalList a;
    private static AdTrackerWebViewLoader b;
    private static Handler c;
    private static HandlerThread d;
    private static AtomicBoolean e;
    private static int f = 0;
    private static boolean g = false;
    private static String h = "https://d.appsdt.com/download/tracker/?";
    private static String i = "https://d.appsdt.com/sdkdwnldbeacon.html";
    private static String j = "https://d.appsdt.com/download/tracker/iatsdkconfs?";
    private static Handler k;

    static String a() {
        return h;
    }

    static String b() {
        return i;
    }

    public static int isUnstableNetwork() {
        return f;
    }

    public static boolean isMetricSample() {
        return g;
    }

    public static Handler getUIHandler() {
        return c;
    }

    public static GoalList getGoalList() {
        return a;
    }

    public static void init() {
        if (e == null) {
            e = new AtomicBoolean(false);
        }
        if (a == null) {
            a = GoalList.getLoggedGoals();
        }
        if (c == null) {
            c = new b();
        }
        if (d == null) {
            d = new HandlerThread("AdTrackerNetworkHandler");
            d.start();
        }
        if (k == null) {
            k = new a(d.getLooper());
        }
    }

    public static synchronized void reportToServer(String str) {
        if (a == null || a.isEmpty()) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "No goals to report");
        } else if (e.compareAndSet(false, true)) {
            k.removeMessages(11);
            Iterator<Goal> it = a.iterator();
            while (it.hasNext()) {
                if (Goal.State.REPORTING_COMPLETED == it.next().state) {
                    it.remove();
                }
            }
            Iterator<Goal> it2 = a.iterator();
            while (it2.hasNext()) {
                it2.next().state = Goal.State.ENQUEUE_PENDING;
            }
            a.saveGoals();
            a.get(0).state = Goal.State.ENQUEUE_REQUESTED;
            Message messageObtain = Message.obtain();
            messageObtain.what = 1;
            messageObtain.arg1 = 0;
            messageObtain.obj = str;
            k.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(Goal goal, boolean z) {
        String str = goal.name;
        long j2 = goal.retryTime;
        int maxWaitTime = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxWaitTime();
        if (true == z) {
            return 0L;
        }
        if (j2 > maxWaitTime) {
            return maxWaitTime;
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m() {
        String preferences = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.TIMETOLIVE);
        String preferences2 = FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.getTime().toString();
        if (preferences == null || preferences2 == null) {
            return false;
        }
        Date time = calendar.getTime();
        calendar.add(11, Integer.parseInt(preferences));
        return calendar.getTime().after(time);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean n() {
        return FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.REFERRER) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean o() {
        String str = j + "t=" + System.currentTimeMillis();
        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Fetch referrer wait time URL: " + str);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpGet httpGet = new HttpGet(str);
        try {
            try {
                HttpResponse httpResponseExecute = !(defaultHttpClient instanceof HttpClient) ? defaultHttpClient.execute(httpGet) : HttpInstrumentation.execute(defaultHttpClient, httpGet);
                if (200 != httpResponseExecute.getStatusLine().getStatusCode()) {
                    return false;
                }
                try {
                    String string = EntityUtils.toString(httpResponseExecute.getEntity());
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Wait time received for referrer: " + string);
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, JSONObjectInstrumentation.init(string).getLong(AdTrackerConstants.KEY_REF_WAIT) * 1000);
                    return true;
                } catch (IOException e2) {
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e2);
                    return false;
                } catch (ParseException e3) {
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, a.b);
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e3);
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Setting default wait time...");
                    return true;
                } catch (JSONException e4) {
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT, a.b);
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e4);
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Setting default wait time...");
                    return true;
                }
            } catch (ClientProtocolException e5) {
                Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e5);
                return false;
            }
        } catch (IOException e6) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Error fetching wait time for referrer", e6);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p() {
        return FileOperations.getBooleanPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER);
    }

    static final Handler c() {
        return k;
    }

    public static void onReceiveReferrer(String str) {
        Message messageObtain = Message.obtain();
        if (c() != null && c().hasMessages(3)) {
            Message messageObtainMessage = c().obtainMessage(3);
            messageObtain.what = 4;
            messageObtain.arg1 = messageObtainMessage.arg1;
            messageObtain.obj = str;
            c().removeMessages(3);
            c().sendMessage(messageObtain);
        }
    }

    static final class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "All goals reported ... De-initializing AdTrackerNetworkInterface!");
                    if (AdTrackerNetworkInterface.d != null) {
                        AdTrackerNetworkInterface.e.set(false);
                        AdTrackerNetworkInterface.d.quit();
                        HandlerThread handlerThread = AdTrackerNetworkInterface.d;
                        HandlerThread unused = AdTrackerNetworkInterface.d = null;
                        handlerThread.interrupt();
                        Handler unused2 = AdTrackerNetworkInterface.k = null;
                    }
                    break;
                default:
                    super.handleMessage(message);
                    break;
            }
        }
    }

    static final class a extends Handler {
        static final int a = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryInterval();
        static final int b = AdTrackerInitializer.getConfigParams().getReferrerWaitTime();
        static final int c = AdTrackerInitializer.getConfigParams().getWebviewTimeout();

        public a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Code duplicated, block: B:103:0x04d5  */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            int i2;
            boolean z;
            switch (message.what) {
                case 2:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Trying to fetch referrer ...");
                    AdTrackerNetworkInterface.a.get(message.arg1).state = Goal.State.REFERRER_REQUESTED;
                    if (!AdTrackerNetworkInterface.p()) {
                        if (!AdTrackerNetworkInterface.o()) {
                            int referrerWaitTimeRetryCount = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount() + 1;
                            int i3 = message.arg2 - 1;
                            message.arg2 = i3;
                            if (i3 == 0) {
                                if (AdTrackerNetworkInterface.n() || AdTrackerNetworkInterface.p()) {
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 4;
                                    messageObtain.arg1 = message.arg1;
                                    messageObtain.obj = (String) message.obj;
                                    sendMessage(messageObtain);
                                } else {
                                    Message messageObtain2 = Message.obtain();
                                    messageObtain2.what = 3;
                                    messageObtain2.arg1 = message.arg1;
                                    messageObtain2.arg2 = b;
                                    messageObtain2.obj = (String) message.obj;
                                    sendMessageDelayed(messageObtain2, b);
                                }
                            } else {
                                Message messageObtain3 = Message.obtain();
                                messageObtain3.what = 2;
                                messageObtain3.arg1 = message.arg1;
                                messageObtain3.arg2 = i3;
                                messageObtain3.obj = (String) message.obj;
                                sendMessageDelayed(messageObtain3, (referrerWaitTimeRetryCount - i3) * a);
                            }
                        } else if (!AdTrackerNetworkInterface.n()) {
                            long longPreferences = FileOperations.getLongPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_REF_WAIT);
                            Message messageObtain4 = Message.obtain();
                            messageObtain4.what = 3;
                            messageObtain4.arg1 = message.arg1;
                            messageObtain4.arg2 = (int) (longPreferences < 0 ? b : longPreferences);
                            messageObtain4.obj = (String) message.obj;
                            sendMessageDelayed(messageObtain4, longPreferences);
                        } else {
                            Message messageObtain5 = Message.obtain();
                            messageObtain5.what = 4;
                            messageObtain5.arg1 = message.arg1;
                            messageObtain5.obj = (String) message.obj;
                            sendMessage(messageObtain5);
                        }
                    } else {
                        Message messageObtain6 = Message.obtain();
                        messageObtain6.what = 4;
                        messageObtain6.arg1 = message.arg1;
                        messageObtain6.obj = (String) message.obj;
                        sendMessage(messageObtain6);
                    }
                    break;
                case 3:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Referrer wait timed out. MESSAGE_GET_REFERRER received ...");
                    if (!AdTrackerNetworkInterface.n()) {
                        Message messageObtain7 = Message.obtain();
                        messageObtain7.what = 5;
                        messageObtain7.arg1 = message.arg1;
                        messageObtain7.obj = (String) message.obj;
                        sendMessage(messageObtain7);
                    } else {
                        Message messageObtain8 = Message.obtain();
                        messageObtain8.what = 4;
                        messageObtain8.arg1 = message.arg1;
                        messageObtain8.obj = (String) message.obj;
                        sendMessage(messageObtain8);
                    }
                    break;
                case 4:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GET_REFFERRER_SUCCEEDED message received");
                    FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.WAIT_FOR_REFERRER, true);
                    AdTrackerNetworkInterface.a.get(message.arg1).state = Goal.State.REFERRER_ACQUIRED;
                    Message messageObtain9 = Message.obtain();
                    messageObtain9.arg1 = message.arg1;
                    messageObtain9.obj = (String) message.obj;
                    if (AdTrackerNetworkInterface.m()) {
                        messageObtain9.what = 6;
                    } else {
                        messageObtain9.what = 7;
                    }
                    sendMessage(messageObtain9);
                    break;
                case 5:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Getting referrer timed out...");
                    String referrerFromLogs = AdTrackerUtils.getReferrerFromLogs();
                    if (referrerFromLogs != null) {
                        Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Saving referrer from logs: " + referrerFromLogs);
                        AdTrackerUtils.setReferrerFromLogs(InternalSDKUtil.getContext(), referrerFromLogs);
                    }
                    Message messageObtain10 = Message.obtain();
                    messageObtain10.what = 4;
                    messageObtain10.arg1 = message.arg1;
                    messageObtain10.obj = (String) message.obj;
                    sendMessage(messageObtain10);
                    break;
                case 6:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting Goal via network ...");
                    Goal goal = AdTrackerNetworkInterface.a.get(message.arg1);
                    String str = (String) message.obj;
                    goal.state = Goal.State.REPORTING_REQUESTED;
                    AdTrackerRequestResponseBuilder.reportGoalOverHttp(str, goal, FileOperations.getPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.VALIDIDS));
                    break;
                case 7:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting Goal via webview");
                    Goal goal2 = AdTrackerNetworkInterface.a.get(message.arg1);
                    goal2.state = Goal.State.REPORTING_REQUESTED;
                    String str2 = (String) message.obj;
                    AdTrackerWebViewLoader unused = AdTrackerNetworkInterface.b = new AdTrackerWebViewLoader();
                    AdTrackerRequestResponseBuilder.saveWebviewRequestParam(str2, goal2);
                    AdTrackerNetworkInterface.b.loadWebview(str2, goal2);
                    Message messageObtain11 = Message.obtain();
                    messageObtain11.what = 9;
                    messageObtain11.arg1 = message.arg1;
                    messageObtain11.obj = str2;
                    sendMessageDelayed(messageObtain11, c);
                    break;
                case 8:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting Goal succeeded...");
                    Goal goal3 = (Goal) message.obj;
                    if (Goal.State.REPORTING_REQUESTED == goal3.state) {
                        goal3.state = Goal.State.REPORTING_COMPLETED;
                        AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_SUCCESS, goal3, 1, message.arg2, 0, null);
                        FileOperations.setPreferences(InternalSDKUtil.getContext(), AdTrackerConstants.IMPREF_FILE, AdTrackerConstants.KEY_FIRST_GOAL_SUCCESS, true);
                        if (AdTrackerConstants.GOAL_DOWNLOAD.equals(goal3.name)) {
                            AdTrackerUtils.updateStatus();
                        }
                        String string = message.getData().getString("appId");
                        int i4 = 0;
                        Iterator<Goal> it = AdTrackerNetworkInterface.a.iterator();
                        while (true) {
                            i2 = i4;
                            if (it.hasNext() && !it.next().equals(goal3)) {
                                i4 = i2 + 1;
                            }
                        }
                        Message messageObtain12 = Message.obtain();
                        if (i2 == AdTrackerNetworkInterface.a.size() - 1) {
                            messageObtain12.what = 11;
                            messageObtain12.arg1 = i2;
                            messageObtain12.obj = string;
                        } else {
                            messageObtain12.what = 1;
                            messageObtain12.arg1 = i2 + 1;
                            messageObtain12.obj = string;
                            AdTrackerNetworkInterface.a.get(messageObtain12.arg1).state = Goal.State.ENQUEUE_REQUESTED;
                        }
                        int unused2 = AdTrackerNetworkInterface.f = 0;
                        sendMessage(messageObtain12);
                    }
                    break;
                case 9:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Reporting message goal timed out...");
                    Goal goal4 = AdTrackerNetworkInterface.a.get(message.arg1);
                    goal4.state = Goal.State.REPORTING_TIMED_OUT;
                    AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal4, 0, 0L, 408, null);
                    AdTrackerNetworkInterface.b.deinit(c);
                    AdTrackerNetworkInterface.a.increaseRetryTime(goal4.name, goal4.count, goal4.isDuplicate);
                    Message messageObtain13 = Message.obtain();
                    messageObtain13.what = 1;
                    messageObtain13.arg1 = message.arg1;
                    messageObtain13.obj = (String) message.obj;
                    sendMessage(messageObtain13);
                    break;
                case 10:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Message report goal failed...");
                    Goal goal5 = (Goal) message.obj;
                    if (Goal.State.REPORTING_REQUESTED == goal5.state) {
                        goal5.state = Goal.State.REPORTING_FAILED;
                        int i5 = 0;
                        Iterator<Goal> it2 = AdTrackerNetworkInterface.a.iterator();
                        while (true) {
                            i = i5;
                            if (it2.hasNext() && !it2.next().equals(goal5)) {
                                i5 = i + 1;
                            }
                        }
                        Message messageObtain14 = Message.obtain();
                        messageObtain14.arg1 = i;
                        messageObtain14.obj = message.getData().getString("appId");
                        if (6001 == message.arg2) {
                            messageObtain14.what = 7;
                        } else {
                            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_FAILURE, goal5, 1, 0L, message.arg2, null);
                            AdTrackerNetworkInterface.a.increaseRetryTime(goal5.name, goal5.count, goal5.isDuplicate);
                            if (goal5.retryTime > 0) {
                                Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Retrying goalname: " + goal5 + " after " + (goal5.retryTime / 1000) + " second");
                            }
                            messageObtain14.what = 1;
                        }
                        sendMessage(messageObtain14);
                    }
                    break;
                case 11:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "No more goals to report ...");
                    AdTrackerNetworkInterface.a.clear();
                    AdTrackerNetworkInterface.a.saveGoals();
                    AdTrackerNetworkInterface.c.sendEmptyMessage(1);
                    break;
                case 12:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Message report goal aborted...");
                    int unused3 = AdTrackerNetworkInterface.f = 1;
                    if (AdTrackerNetworkInterface.a != null && !AdTrackerNetworkInterface.a.isEmpty()) {
                        Iterator<Goal> it3 = AdTrackerNetworkInterface.a.iterator();
                        while (it3.hasNext()) {
                            if (Goal.State.REPORTING_COMPLETED == it3.next().state) {
                                it3.remove();
                            }
                        }
                        AdTrackerNetworkInterface.a.saveGoals();
                    }
                    GoalList unused4 = AdTrackerNetworkInterface.a = null;
                    AdTrackerNetworkInterface.c.sendEmptyMessage(1);
                    break;
                default:
                    Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Enqueuing message goal ...");
                    Goal goal6 = AdTrackerNetworkInterface.a.get(message.arg1);
                    if (InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext())) {
                        AdTrackerNetworkInterface.a.saveGoals();
                        boolean unused5 = AdTrackerNetworkInterface.g = AdTrackerInitializer.getLogger().startNewSample();
                        if (Goal.State.ENQUEUE_REQUESTED != goal6.state) {
                            z = false;
                        } else if (message.arg1 == 0) {
                            z = true;
                        } else if (Goal.State.REPORTING_COMPLETED != AdTrackerNetworkInterface.a.get(message.arg1 - 1).state) {
                            z = false;
                        } else {
                            z = true;
                        }
                        goal6.state = Goal.State.ENQUEUE_SUCCEEDED;
                        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal " + goal6.name + " enqueued successfully for reporting");
                        long jB = AdTrackerNetworkInterface.b(goal6, z);
                        int referrerWaitTimeRetryCount2 = AdTrackerInitializer.getConfigParams().getReferrerWaitTimeRetryCount() + 1;
                        Message messageObtain15 = Message.obtain();
                        messageObtain15.what = 2;
                        messageObtain15.arg1 = message.arg1;
                        messageObtain15.arg2 = referrerWaitTimeRetryCount2;
                        messageObtain15.obj = (String) message.obj;
                        sendMessageDelayed(messageObtain15, jB);
                    } else {
                        goal6.state = Goal.State.ENQUEUE_PENDING;
                        Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Network Unavailable. Aborting attempt to report goal ...");
                        sendEmptyMessage(12);
                    }
                    break;
            }
        }
    }
}
