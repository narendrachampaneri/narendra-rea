package com.amazon.device.ads;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
class AdUtils {
    public static final String REQUIRED_ACTIVITY = "com.amazon.device.ads.AdActivity";
    private static AdUtilsExecutor executor = new AdUtilsExecutor();

    private AdUtils() {
    }

    static boolean checkDefinedActivities(Context context) {
        return executor.checkDefinedActivities(context);
    }

    static void setConnectionMetrics(ConnectionInfo connectionInfo, MetricsCollector metricsCollector) {
        executor.setConnectionMetrics(connectionInfo, metricsCollector);
    }

    public static double getViewportInitialScale(double defaultScale) {
        return executor.getViewportInitialScale(defaultScale);
    }

    public static double calculateScalingMultiplier(int absoluteAdWidth, int absoluteAdHeight, int absoluteWindowWidth, int absoluteWindowHeight) {
        return executor.calculateScalingMultiplier(absoluteAdWidth, absoluteAdHeight, absoluteWindowWidth, absoluteWindowHeight);
    }

    public static int pixelToDeviceIndependentPixel(int px) {
        return executor.pixelToDeviceIndependentPixel(px);
    }

    public static int deviceIndependentPixelToPixel(int dp) {
        return executor.deviceIndependentPixelToPixel(dp);
    }

    public static float getScalingFactorAsFloat() {
        return executor.getScalingFactorAsFloat();
    }

    static class AdUtilsExecutor {
        private final HashSet<String> requiredActivities = new HashSet<>();
        private boolean hasRequiredActivities = false;

        AdUtilsExecutor() {
            this.requiredActivities.add(AdUtils.REQUIRED_ACTIVITY);
        }

        boolean checkDefinedActivities(Context context) {
            if (this.hasRequiredActivities) {
                return true;
            }
            HashSet<String> activities = new HashSet<>();
            try {
                if (AndroidTargetUtils.isAtLeastAndroidAPI(8)) {
                    String path = AndroidTargetUtils.getPackageCodePath(context);
                    PackageManager pManager = context.getPackageManager();
                    PackageInfo info = pManager.getPackageArchiveInfo(path, 1);
                    ActivityInfo[] arr$ = info.activities;
                    for (ActivityInfo a : arr$) {
                        activities.add(a.name);
                    }
                    this.hasRequiredActivities = activities.containsAll(this.requiredActivities);
                    return this.hasRequiredActivities;
                }
            } catch (Exception e) {
            }
            this.hasRequiredActivities = true;
            return true;
        }

        void setConnectionMetrics(ConnectionInfo connectionInfo, MetricsCollector metricsCollector) {
            if (connectionInfo != null) {
                if (connectionInfo.isWiFi()) {
                    metricsCollector.incrementMetric(Metrics.MetricType.WIFI_PRESENT);
                } else {
                    metricsCollector.setMetricString(Metrics.MetricType.CONNECTION_TYPE, connectionInfo.getConnectionType());
                }
            }
            DeviceInfo deviceInfo = MobileAdsInfoStore.getInstance().getDeviceInfo();
            if (deviceInfo.getCarrier() != null) {
                metricsCollector.setMetricString(Metrics.MetricType.CARRIER_NAME, deviceInfo.getCarrier());
            }
        }

        double getViewportInitialScale(double defaultScale) {
            if (AndroidTargetUtils.isAtLeastAndroidAPI(19)) {
                return 1.0d;
            }
            return defaultScale;
        }

        double calculateScalingMultiplier(int absoluteAdWidth, int absoluteAdHeight, int absoluteWindowWidth, int absoluteWindowHeight) {
            double multiplier;
            double widthRatio = ((double) absoluteWindowWidth) / ((double) absoluteAdWidth);
            double heightRatio = ((double) absoluteWindowHeight) / ((double) absoluteAdHeight);
            if ((heightRatio < widthRatio || widthRatio == 0.0d) && heightRatio != 0.0d) {
                multiplier = heightRatio;
            } else {
                multiplier = widthRatio;
            }
            if (multiplier == 0.0d) {
                return 1.0d;
            }
            return multiplier;
        }

        int pixelToDeviceIndependentPixel(int px) {
            return (int) (px / getScalingFactorAsFloat());
        }

        int deviceIndependentPixelToPixel(int dp) {
            return (int) (dp * getScalingFactorAsFloat());
        }

        float getScalingFactorAsFloat() {
            return MobileAdsInfoStore.getInstance().getDeviceInfo().getScalingFactorAsFloat();
        }
    }
}
