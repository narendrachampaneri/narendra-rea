package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v7.media.MediaRouteSelector;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;

/* JADX INFO: loaded from: classes.dex */
public class MediaRouteChooserDialogFragment extends DialogFragment implements TraceFieldInterface {
    private final String ARGUMENT_SELECTOR = "selector";
    private MediaRouteSelector mSelector;

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

    public MediaRouteChooserDialogFragment() {
        setCancelable(true);
    }

    public MediaRouteSelector getRouteSelector() {
        ensureRouteSelector();
        return this.mSelector;
    }

    private void ensureRouteSelector() {
        if (this.mSelector == null) {
            Bundle args = getArguments();
            if (args != null) {
                this.mSelector = MediaRouteSelector.fromBundle(args.getBundle("selector"));
            }
            if (this.mSelector == null) {
                this.mSelector = MediaRouteSelector.EMPTY;
            }
        }
    }

    public void setRouteSelector(MediaRouteSelector selector) {
        if (selector == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        ensureRouteSelector();
        if (!this.mSelector.equals(selector)) {
            this.mSelector = selector;
            Bundle args = getArguments();
            if (args == null) {
                args = new Bundle();
            }
            args.putBundle("selector", selector.asBundle());
            setArguments(args);
            MediaRouteChooserDialog dialog = (MediaRouteChooserDialog) getDialog();
            if (dialog != null) {
                dialog.setRouteSelector(selector);
            }
        }
    }

    public MediaRouteChooserDialog onCreateChooserDialog(Context context, Bundle savedInstanceState) {
        return new MediaRouteChooserDialog(context);
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        MediaRouteChooserDialog dialog = onCreateChooserDialog(getActivity(), savedInstanceState);
        dialog.setRouteSelector(getRouteSelector());
        return dialog;
    }
}
