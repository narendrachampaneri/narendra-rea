package com.amazon.insights.session;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.core.util.JSONSerializable;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.StringUtil;
import com.newrelic.agent.android.instrumentation.JSONObjectInstrumentation;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Scanner;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Session implements JSONSerializable {
    private static final String JSON_SESSION_ID_ATTR = "session_id";
    private static final String JSON_START_TIME_ATTR = "start_time";
    private static final String JSON_STOP_TIME_ATTR = "stop_time";
    protected static final int SESSION_ID_APPKEY_LENGTH = 8;
    protected static final String SESSION_ID_DATE_FORMAT = "yyyyMMdd";
    protected static final char SESSION_ID_DELIMITER = '-';
    protected static final char SESSION_ID_PAD_CHAR = '_';
    protected static final String SESSION_ID_TIME_FORMAT = "HHmmssSSS";
    protected static final int SESSION_ID_UNIQID_LENGTH = 8;
    private final String sessionID;
    private final DateFormat sessionIdTimeFormat;
    private final long startTime;
    private Long stopTime;

    public static Session newInstance(InsightsContext context) {
        return new Session(context);
    }

    public static Session getSessionFromSerializedSession(String serializedSession) {
        Session s = null;
        if (StringUtil.isBlank(serializedSession)) {
            return null;
        }
        try {
            JSONObject json = JSONObjectInstrumentation.init(serializedSession);
            String sessionID = json.getString(JSON_SESSION_ID_ATTR);
            String startTime = json.getString(JSON_START_TIME_ATTR);
            String stopTime = json.getString(JSON_STOP_TIME_ATTR);
            Session s2 = new Session(sessionID, startTime, stopTime);
            s = s2;
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return s;
    }

    protected Session(InsightsContext context) {
        this.stopTime = null;
        Preconditions.checkNotNull(context, "A valid InsightsContext must be provided!");
        this.sessionIdTimeFormat = new SimpleDateFormat("yyyyMMdd-HHmmssSSS", Locale.US);
        this.sessionIdTimeFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.startTime = System.currentTimeMillis();
        this.stopTime = null;
        this.sessionID = generateSessionID(context);
    }

    protected Session(String sessionID, String startTime, String stopTime) {
        this.stopTime = null;
        this.sessionIdTimeFormat = new SimpleDateFormat("yyyyMMdd-HHmmssSSS", Locale.US);
        this.sessionIdTimeFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Scanner s = new Scanner(startTime);
        this.startTime = s.nextLong();
        Scanner s2 = new Scanner(stopTime);
        this.stopTime = Long.valueOf(s2.nextLong());
        this.sessionID = sessionID;
        if (this.stopTime.longValue() == Long.MIN_VALUE) {
            this.stopTime = null;
        }
    }

    public boolean isPaused() {
        return this.stopTime != null;
    }

    public void pause() {
        if (!isPaused()) {
            this.stopTime = Long.valueOf(System.currentTimeMillis());
        }
    }

    public void resume() {
        this.stopTime = null;
    }

    public Number getSessionDuration() {
        Long time = this.stopTime;
        if (time == null) {
            time = Long.valueOf(System.currentTimeMillis());
        }
        if (time.longValue() < this.startTime) {
            return 0L;
        }
        return Long.valueOf(time.longValue() - this.startTime);
    }

    public String generateSessionID(InsightsContext context) {
        String appKey = context.getCredentials().getApplicationKey();
        String uniqID = context.getUniqueId().getValue();
        String time = this.sessionIdTimeFormat.format(Long.valueOf(this.startTime));
        return StringUtil.trimOrPadString(appKey, 8, SESSION_ID_PAD_CHAR) + SESSION_ID_DELIMITER + StringUtil.trimOrPadString(uniqID, 8, SESSION_ID_PAD_CHAR) + SESSION_ID_DELIMITER + time;
    }

    @Override // com.amazon.insights.core.util.JSONSerializable
    public JSONObject toJSONObject() {
        long stopT = this.stopTime;
        if (stopT == null) {
            stopT = Long.MIN_VALUE;
        }
        JSONBuilder builder = new JSONBuilder(this);
        builder.withAttribute(JSON_SESSION_ID_ATTR, this.sessionID);
        builder.withAttribute(JSON_START_TIME_ATTR, Long.valueOf(this.startTime));
        builder.withAttribute(JSON_STOP_TIME_ATTR, stopT);
        return builder.toJSONObject();
    }

    public String toString() {
        JSONObject json = toJSONObject();
        try {
            return !(json instanceof JSONObject) ? json.toString(4) : JSONObjectInstrumentation.toString(json, 4);
        } catch (JSONException e) {
            return !(json instanceof JSONObject) ? json.toString() : JSONObjectInstrumentation.toString(json);
        }
    }

    public String getSessionID() {
        return this.sessionID;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public Long getStopTime() {
        return this.stopTime;
    }
}
