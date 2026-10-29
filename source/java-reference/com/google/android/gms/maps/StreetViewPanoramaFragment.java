package com.google.android.gms.maps;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzaa;
import com.google.android.gms.maps.internal.zzac;
import com.google.android.gms.maps.internal.zzad;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
@Instrumented
public class StreetViewPanoramaFragment extends Fragment implements TraceFieldInterface {
    private final zzb zzaSx = new zzb(this);
    private StreetViewPanorama zzaSy;

    /* JADX INFO: loaded from: classes2.dex */
    static class zza implements StreetViewLifecycleDelegate {
        private final IStreetViewPanoramaFragmentDelegate zzaSz;
        private final Fragment zzavH;

        public zza(Fragment fragment, IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegate) {
            this.zzaSz = (IStreetViewPanoramaFragmentDelegate) zzx.zzz(iStreetViewPanoramaFragmentDelegate);
            this.zzavH = (Fragment) zzx.zzz(fragment);
        }

        @Override // com.google.android.gms.maps.internal.StreetViewLifecycleDelegate
        public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback callback) {
            try {
                this.zzaSz.getStreetViewPanoramaAsync(new zzaa.zza() { // from class: com.google.android.gms.maps.StreetViewPanoramaFragment.zza.1
                    @Override // com.google.android.gms.maps.internal.zzaa
                    public void zza(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) throws RemoteException {
                        callback.onStreetViewPanoramaReady(new StreetViewPanorama(iStreetViewPanoramaDelegate));
                    }
                });
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onCreate(Bundle savedInstanceState) {
            if (savedInstanceState == null) {
                try {
                    savedInstanceState = new Bundle();
                } catch (RemoteException e) {
                    throw new RuntimeRemoteException(e);
                }
            }
            Bundle arguments = this.zzavH.getArguments();
            if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
                zzac.zza(savedInstanceState, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
            }
            this.zzaSz.onCreate(savedInstanceState);
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
            try {
                return (View) zze.zzp(this.zzaSz.onCreateView(zze.zzC(inflater), zze.zzC(container), savedInstanceState));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroy() {
            try {
                this.zzaSz.onDestroy();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onDestroyView() {
            try {
                this.zzaSz.onDestroyView();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onInflate(Activity activity, Bundle attrs, Bundle savedInstanceState) {
            try {
                this.zzaSz.onInflate(zze.zzC(activity), null, savedInstanceState);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onLowMemory() {
            try {
                this.zzaSz.onLowMemory();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onPause() {
            try {
                this.zzaSz.onPause();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onResume() {
            try {
                this.zzaSz.onResume();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onSaveInstanceState(Bundle outState) {
            try {
                this.zzaSz.onSaveInstanceState(outState);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStart() {
        }

        @Override // com.google.android.gms.dynamic.LifecycleDelegate
        public void onStop() {
        }

        public IStreetViewPanoramaFragmentDelegate zzzZ() {
            return this.zzaSz;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static class zzb extends com.google.android.gms.dynamic.zza<zza> {
        private Activity mActivity;
        private final List<OnStreetViewPanoramaReadyCallback> zzaSC = new ArrayList();
        protected zzf<zza> zzaSh;
        private final Fragment zzavH;

        zzb(Fragment fragment) {
            this.zzavH = fragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivity(Activity activity) {
            this.mActivity = activity;
            zzzW();
        }

        public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback callback) {
            if (zztU() != null) {
                zztU().getStreetViewPanoramaAsync(callback);
            } else {
                this.zzaSC.add(callback);
            }
        }

        @Override // com.google.android.gms.dynamic.zza
        protected void zza(zzf<zza> zzfVar) {
            this.zzaSh = zzfVar;
            zzzW();
        }

        public void zzzW() {
            if (this.mActivity == null || this.zzaSh == null || zztU() != null) {
                return;
            }
            try {
                MapsInitializer.initialize(this.mActivity);
                this.zzaSh.zza(new zza(this.zzavH, zzad.zzaO(this.mActivity).zzt(zze.zzC(this.mActivity))));
                Iterator<OnStreetViewPanoramaReadyCallback> it = this.zzaSC.iterator();
                while (it.hasNext()) {
                    zztU().getStreetViewPanoramaAsync(it.next());
                }
                this.zzaSC.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }
    }

    public static StreetViewPanoramaFragment newInstance() {
        return new StreetViewPanoramaFragment();
    }

    public static StreetViewPanoramaFragment newInstance(StreetViewPanoramaOptions options) {
        StreetViewPanoramaFragment streetViewPanoramaFragment = new StreetViewPanoramaFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("StreetViewPanoramaOptions", options);
        streetViewPanoramaFragment.setArguments(bundle);
        return streetViewPanoramaFragment;
    }

    @Deprecated
    public final StreetViewPanorama getStreetViewPanorama() {
        IStreetViewPanoramaFragmentDelegate iStreetViewPanoramaFragmentDelegateZzzZ = zzzZ();
        if (iStreetViewPanoramaFragmentDelegateZzzZ == null) {
            return null;
        }
        try {
            IStreetViewPanoramaDelegate streetViewPanorama = iStreetViewPanoramaFragmentDelegateZzzZ.getStreetViewPanorama();
            if (streetViewPanorama == null) {
                return null;
            }
            if (this.zzaSy == null || this.zzaSy.zzzY().asBinder() != streetViewPanorama.asBinder()) {
                this.zzaSy = new StreetViewPanorama(streetViewPanorama);
            }
            return this.zzaSy;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback callback) {
        zzx.zzcD("getStreetViewPanoramaAsync() must be called on the main thread");
        this.zzaSx.getStreetViewPanoramaAsync(callback);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle savedInstanceState) {
        if (savedInstanceState != null) {
            savedInstanceState.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(savedInstanceState);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.zzaSx.setActivity(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        TraceMachine.startTracing("StreetViewPanoramaFragment");
        try {
            TraceMachine.enterMethod(this._nr_trace, "StreetViewPanoramaFragment#onCreate", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "StreetViewPanoramaFragment#onCreate", null);
        }
        super.onCreate(bundle);
        this.zzaSx.onCreate(bundle);
        TraceMachine.exitMethod();
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        try {
            TraceMachine.enterMethod(this._nr_trace, "StreetViewPanoramaFragment#onCreateView", null);
        } catch (NoSuchFieldError e) {
            TraceMachine.enterMethod(null, "StreetViewPanoramaFragment#onCreateView", null);
        }
        View viewOnCreateView = this.zzaSx.onCreateView(layoutInflater, viewGroup, bundle);
        TraceMachine.exitMethod();
        return viewOnCreateView;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.zzaSx.onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.zzaSx.onDestroyView();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onInflate(Activity activity, AttributeSet attrs, Bundle savedInstanceState) {
        super.onInflate(activity, attrs, savedInstanceState);
        this.zzaSx.setActivity(activity);
        this.zzaSx.onInflate(activity, new Bundle(), savedInstanceState);
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.zzaSx.onLowMemory();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.zzaSx.onPause();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.zzaSx.onResume();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        if (outState != null) {
            outState.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(outState);
        this.zzaSx.onSaveInstanceState(outState);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle args) {
        super.setArguments(args);
    }

    protected IStreetViewPanoramaFragmentDelegate zzzZ() {
        this.zzaSx.zzzW();
        if (this.zzaSx.zztU() == null) {
            return null;
        }
        return this.zzaSx.zztU().zzzZ();
    }
}
