package com.amazon.ags.client.whispersync.clock;

import android.util.Log;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class GameDataServiceSyncedClock implements Clock {
    private static final String TAG = "GC_Whipsersync";
    private final ClockSkewStorage clockSkewStorage;
    private final Clock localClock;

    public GameDataServiceSyncedClock(Clock localClock, ClockSkewStorage clockSkewStorage) {
        this.localClock = localClock;
        this.clockSkewStorage = clockSkewStorage;
    }

    @Override // com.amazon.ags.client.whispersync.clock.Clock
    public long getCurrentTimeSeconds() {
        return getCurrentLocalTimeSeconds() - this.clockSkewStorage.getClockSkew();
    }

    public void synchronizeClock(String currentServerTime) {
        if (currentServerTime == null) {
            Log.w(TAG, "Received a null date from the service, cannot synchronize with server clock");
            return;
        }
        try {
            long currentServerTimeSeconds = parseServerTime(currentServerTime);
            long currentLocalTimeSeconds = getCurrentLocalTimeSeconds();
            long newClockSkew = currentLocalTimeSeconds - currentServerTimeSeconds;
            this.clockSkewStorage.setClockSkew(newClockSkew);
            Log.d(TAG, "Measured clock skew as: " + newClockSkew);
        } catch (ParseException e) {
            Log.w(TAG, "Failed to synchronize with server clock, received an invalid date format", e);
        }
    }

    private long getCurrentLocalTimeSeconds() {
        return this.localClock.getCurrentTimeSeconds();
    }

    private long parseServerTime(String currentServerTime) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US);
        dateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return dateFormat.parse(currentServerTime).getTime() / TimeUnit.SECONDS.toMillis(1L);
    }
}
