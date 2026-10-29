package com.amazon.device.ads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;

/* JADX INFO: loaded from: classes.dex */
class AdLocation {
    private static final int ARCMINUTE_PRECISION = 6;
    private static final String LOGTAG = AdLocation.class.getSimpleName();
    private static final float MAX_DISTANCE_IN_KILOMETERS = 3.0f;
    private final Configuration configuration;
    private final Context context;
    private final MobileAdsLogger logger;

    private enum LocationAwareness {
        LOCATION_AWARENESS_NORMAL,
        LOCATION_AWARENESS_TRUNCATED,
        LOCATION_AWARENESS_DISABLED
    }

    public AdLocation(Context context) {
        this(context, Configuration.getInstance());
    }

    AdLocation(Context context, Configuration configuration) {
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        this.context = context;
        this.configuration = configuration;
    }

    private static double roundToArcminutes(double coordinate) {
        return Math.round(coordinate * 60.0d) / 60.0d;
    }

    private LocationAwareness getLocationAwareness() {
        return this.configuration.getBoolean(Configuration.ConfigOption.TRUNCATE_LAT_LON) ? LocationAwareness.LOCATION_AWARENESS_TRUNCATED : LocationAwareness.LOCATION_AWARENESS_NORMAL;
    }

    public Location getLocation() {
        Location result;
        LocationAwareness locationAwareness = getLocationAwareness();
        if (LocationAwareness.LOCATION_AWARENESS_DISABLED.equals(locationAwareness)) {
            return null;
        }
        LocationManager lm = (LocationManager) this.context.getSystemService("location");
        Location gpsLocation = null;
        try {
            gpsLocation = lm.getLastKnownLocation("gps");
        } catch (IllegalArgumentException e) {
            this.logger.d("Failed to retrieve GPS location: No GPS found");
        } catch (SecurityException e2) {
            this.logger.d("Failed to retrieve GPS location: No permissions to access GPS");
        }
        Location networkLocation = null;
        try {
            networkLocation = lm.getLastKnownLocation("network");
        } catch (IllegalArgumentException e3) {
            this.logger.d("Failed to retrieve network location: No network provider found");
        } catch (SecurityException e4) {
            this.logger.d("Failed to retrieve network location: No permissions to access network location");
        }
        if (gpsLocation == null && networkLocation == null) {
            return null;
        }
        if (gpsLocation != null && networkLocation != null) {
            float distanceInMeters = gpsLocation.distanceTo(networkLocation);
            float distanceInKilometers = distanceInMeters / 1000.0f;
            if (distanceInKilometers <= MAX_DISTANCE_IN_KILOMETERS) {
                float gpsLocationAccuracy = gpsLocation.hasAccuracy() ? gpsLocation.getAccuracy() : Float.MAX_VALUE;
                float networkLocationAccuracy = networkLocation.hasAccuracy() ? networkLocation.getAccuracy() : Float.MAX_VALUE;
                if (gpsLocationAccuracy < networkLocationAccuracy) {
                    this.logger.d("Setting lat/long using GPS determined by distance");
                    result = gpsLocation;
                } else {
                    this.logger.d("Setting lat/long using network determined by distance");
                    result = networkLocation;
                }
            } else if (gpsLocation.getTime() > networkLocation.getTime()) {
                this.logger.d("Setting lat/long using GPS");
                result = gpsLocation;
            } else {
                this.logger.d("Setting lat/long using network");
                result = networkLocation;
            }
        } else if (gpsLocation != null) {
            this.logger.d("Setting lat/long using GPS, not network");
            result = gpsLocation;
        } else {
            this.logger.d("Setting lat/long using network location, not GPS");
            result = networkLocation;
        }
        if (LocationAwareness.LOCATION_AWARENESS_TRUNCATED.equals(locationAwareness)) {
            double lat = roundToArcminutes(result.getLatitude());
            double truncatedLat = Math.round(Math.pow(10.0d, 6.0d) * lat) / Math.pow(10.0d, 6.0d);
            result.setLatitude(truncatedLat);
            double lon = roundToArcminutes(result.getLongitude());
            double truncatedLon = Math.round(Math.pow(10.0d, 6.0d) * lon) / Math.pow(10.0d, 6.0d);
            result.setLongitude(truncatedLon);
        }
        return result;
    }
}
