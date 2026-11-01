# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${ANDROID_SDK_ROOT}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Proguard Android Webivew for release. uncomment if you are using a webview in axmol
#-keep public class android.net.http.SslError
#-keep public class android.webkit.WebViewClient

#-dontwarn android.webkit.WebView
#-dontwarn android.net.http.SslError
#-dontwarn android.webkit.WebViewClient
# Called from native code through JNI (mm::app::platform::setGameHandlesBack)
-keep class dev.axmol.app.AppActivity {
    public static void setGameHandlesBack(boolean);
    public static void setMulticastLock(boolean);
    public static void exportSave(java.lang.String);
    public static void importSave();
    public static void vibrate(int);
    public static void scanQr();
    public static java.lang.String qrMatrix(java.lang.String);
    private static native void nativeOnQrScanned(java.lang.String);
    private static native void nativeOnSaveImported(java.lang.String);
    private static native void nativeOnSaveExported(boolean);
}

-keep class com.google.zxing.** { *; }
-keep class com.journeyapps.barcodescanner.** { *; }
