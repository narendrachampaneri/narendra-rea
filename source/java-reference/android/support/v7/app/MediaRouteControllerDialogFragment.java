package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;

/* JADX INFO: loaded from: classes.dex */
public class MediaRouteControllerDialogFragment extends DialogFragment implements TraceFieldInterface {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    public MediaRouteControllerDialogFragment() {
        setCancelable(true);
    }

    public MediaRouteControllerDialog onCreateControllerDialog(Context context, Bundle savedInstanceState) {
        return new MediaRouteControllerDialog(context);
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        return onCreateControllerDialog(getActivity(), savedInstanceState);
    }
}
