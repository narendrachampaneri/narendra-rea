package org.cocos2dx.lib;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import io.fabric.sdk.android.services.common.CommonUtils;

/* JADX INFO: loaded from: classes.dex */
@Instrumented
public abstract class Cocos2dxActivity extends Activity implements Cocos2dxHelper.Cocos2dxHelperListener, TraceFieldInterface {
    private static final String TAG = Cocos2dxActivity.class.getSimpleName();
    private static Context sContext = null;
    protected static boolean sWasScreenOn = true;
    private Cocos2dxGLSurfaceView mGLSurfaceView;
    private Cocos2dxHandler mHandler;
    private BroadcastReceiver mReceiver;

    public static Context getContext() {
        return sContext;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        TraceMachine.startTracing("Cocos2dxActivity");
        try {
            TraceMachine.enterMethod(this._nr_trace, "Cocos2dxActivity#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "Cocos2dxActivity#onCreate", null);
        }
        super.onCreate(bundle);
        sContext = this;
        this.mHandler = new Cocos2dxHandler(this);
        IntentFilter filter = new IntentFilter("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        this.mReceiver = new ScreenReceiver();
        registerReceiver(this.mReceiver, filter);
        init();
        Cocos2dxHelper.init(this, this);
        TraceMachine.exitMethod();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (!sWasScreenOn) {
            Log.d(TAG, "SCREEN TURNED ON");
            Log.d(TAG, "THIS IS WHEN ONRESUME() IS CALLED DUE TO A SCREEN STATE CHANGE");
        } else {
            Log.d(TAG, "THIS IS WHEN ONRESUME() IS CALLED WHEN THE SCREEN STATE HAS NOT CHANGED");
        }
        super.onResume();
        Cocos2dxHelper.onResume();
        this.mGLSurfaceView.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (sWasScreenOn) {
            Log.d(TAG, "THIS IS THE CASE WHEN ONPAUSE() IS CALLED BY THE SYSTEM DUE TO A SCREEN STATE CHANGE");
            raiseScreenStateChange();
        } else {
            Log.d(TAG, "THIS IS WHEN ONPAUSE() IS CALLED WHEN THE SCREEN STATE HAS NOT CHANGED");
        }
        Cocos2dxHelper.onPause();
        if (!sWasScreenOn) {
            this.mGLSurfaceView.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
        Log.d(TAG, "HAS WINDOW FOCUS?: " + hasWindowFocus);
        if (hasWindowFocus) {
            Log.d(TAG, "mGLSurfaceView RESUMED");
        } else {
            Log.d(TAG, "mGLSurfaceView PAUSED");
        }
    }

    protected void raiseScreenStateChange() {
    }

    @Override // android.app.Activity
    protected void onStart() {
        ApplicationStateMonitor.getInstance().activityStarted();
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        ApplicationStateMonitor.getInstance().activityStopped();
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.mReceiver != null) {
            unregisterReceiver(this.mReceiver);
        }
        super.onDestroy();
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showDialog(String pTitle, String pMessage) {
        Message msg = new Message();
        msg.what = 1;
        msg.obj = new Cocos2dxHandler.DialogMessage(pTitle, pMessage);
        this.mHandler.sendMessage(msg);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showEditTextDialog(String pTitle, String pContent, int pInputMode, int pInputFlag, int pReturnType, int pMaxLength) {
        Message msg = new Message();
        msg.what = 2;
        msg.obj = new Cocos2dxHandler.EditBoxMessage(pTitle, pContent, pInputMode, pInputFlag, pReturnType, pMaxLength);
        this.mHandler.sendMessage(msg);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void dismissEditTextDialog() {
        Message msg = new Message();
        msg.what = 3;
        msg.obj = null;
        this.mHandler.sendMessage(msg);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void runOnGLThread(Runnable pRunnable) {
        this.mGLSurfaceView.queueEvent(pRunnable);
    }

    public void init() {
        ViewGroup.LayoutParams framelayout_params = new ViewGroup.LayoutParams(-1, -1);
        FrameLayout framelayout = new FrameLayout(this);
        framelayout.setLayoutParams(framelayout_params);
        ViewGroup.LayoutParams edittext_layout_params = new ViewGroup.LayoutParams(-1, -2);
        Cocos2dxEditText edittext = new Cocos2dxEditText(this);
        edittext.setLayoutParams(edittext_layout_params);
        framelayout.addView(edittext);
        this.mGLSurfaceView = onCreateView();
        framelayout.addView(this.mGLSurfaceView);
        if (isAndroidEmulator()) {
            this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        }
        this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer());
        this.mGLSurfaceView.setCocos2dxEditText(edittext);
        setContentView(framelayout);
        this.mGLSurfaceView.setKeepScreenOn(true);
    }

    public Cocos2dxGLSurfaceView onCreateView() {
        return new Cocos2dxGLSurfaceView(this);
    }

    private static final boolean isAndroidEmulator() {
        String model = Build.MODEL;
        Log.d(TAG, "model=" + model);
        String product = Build.PRODUCT;
        Log.d(TAG, "product=" + product);
        boolean isEmulator = false;
        if (product != null) {
            isEmulator = product.equals(CommonUtils.SDK) || product.contains("_sdk") || product.contains("sdk_");
        }
        Log.d(TAG, "isEmulator=" + isEmulator);
        return isEmulator;
    }

    private class ScreenReceiver extends BroadcastReceiver {
        private ScreenReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                Cocos2dxActivity.sWasScreenOn = false;
                Log.d(Cocos2dxActivity.TAG, "Received Intent.ACTION_SCREEN_OFF");
            } else if (intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                Cocos2dxActivity.sWasScreenOn = true;
                Log.d(Cocos2dxActivity.TAG, "Received Intent.ACTION_SCREEN_ON");
            }
        }
    }
}
