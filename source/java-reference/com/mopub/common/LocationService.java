package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes.dex */
public class LocationService {

    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED;

        @Deprecated
        public MoPub.LocationAwareness getNewLocationAwareness() {
            if (this == TRUNCATED) {
                return MoPub.LocationAwareness.TRUNCATED;
            }
            if (this == DISABLED) {
                return MoPub.LocationAwareness.DISABLED;
            }
            return MoPub.LocationAwareness.NORMAL;
        }

        @Deprecated
        public static LocationAwareness fromMoPubLocationAwareness(MoPub.LocationAwareness awareness) {
            if (awareness == MoPub.LocationAwareness.DISABLED) {
                return DISABLED;
            }
            if (awareness == MoPub.LocationAwareness.TRUNCATED) {
                return TRUNCATED;
            }
            return NORMAL;
        }
    }

    @Nullable
    public static Location getLastKnownLocation(Context context, int locationPrecision, MoPub.LocationAwareness locationLocationAwareness) {
        Location result;
        if (locationLocationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        Location gpsLocation = null;
        try {
            gpsLocation = locationManager.getLastKnownLocation("gps");
        } catch (IllegalArgumentException e) {
            MoPubLog.d("Failed to retrieve GPS location: device has no GPS provider.");
        } catch (NullPointerException e2) {
            MoPubLog.d("Failed to retrieve GPS location: device has no GPS provider.");
        } catch (SecurityException e3) {
            MoPubLog.d("Failed to retrieve GPS location: access appears to be disabled.");
        }
        Location networkLocation = null;
        try {
            networkLocation = locationManager.getLastKnownLocation("network");
        } catch (IllegalArgumentException e4) {
            MoPubLog.d("Failed to retrieve network location: device has no network provider.");
        } catch (NullPointerException e5) {
            MoPubLog.d("Failed to retrieve GPS location: device has no network provider.");
        } catch (SecurityException e6) {
            MoPubLog.d("Failed to retrieve network location: access appears to be disabled.");
        }
        if (gpsLocation == null && networkLocation == null) {
            return null;
        }
        if (gpsLocation == null || networkLocation == null) {
            if (gpsLocation != null) {
                result = gpsLocation;
            } else {
                result = networkLocation;
            }
        } else if (gpsLocation.getTime() > networkLocation.getTime()) {
            result = gpsLocation;
        } else {
            result = networkLocation;
        }
        if (locationLocationAwareness == MoPub.LocationAwareness.TRUNCATED) {
            double lat = result.getLatitude();
            double truncatedLat = BigDecimal.valueOf(lat).setScale(locationPrecision, 5).doubleValue();
            result.setLatitude(truncatedLat);
            double lon = result.getLongitude();
            double truncatedLon = BigDecimal.valueOf(lon).setScale(locationPrecision, 5).doubleValue();
            result.setLongitude(truncatedLon);
            return result;
        }
        return result;
    }
}
