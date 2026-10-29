package com.vungle.publisher.inject;

import android.content.Context;
import com.vungle.log.Logger;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.cg;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.BitmapFactory;
import dagger.ObjectGraph;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class Injector implements cg {
    private static final Injector b = new Injector();
    public ObjectGraph a;
    private boolean c;
    private List<OverrideModule> d = new ArrayList();
    private cg e;

    public static Injector getInstance() {
        return b;
    }

    private Injector() {
    }

    @Override // com.vungle.publisher.cg
    public void setBitmapFactory(BitmapFactory bitmapFactory) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "bitmap factory in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, "setting bitmap factory in injector " + bitmapFactory);
                a().setBitmapFactory(bitmapFactory);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    @Override // com.vungle.publisher.cg
    public final void a(Class<? extends FullScreenAdActivity> cls) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "full screen ad activity class in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, "setting full screen ad activity class in injector " + cls);
                a().a(cls);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    @Override // com.vungle.publisher.cg
    public void setWrapperFramework(WrapperFramework wrapperFramework) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "wrapper framework in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, "setting wrapper framework in injector: " + wrapperFramework);
                a().setWrapperFramework(wrapperFramework);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    @Override // com.vungle.publisher.cg
    public void setWrapperFrameworkVersion(String wrapperFrameworkVersion) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "wrapper framework version in injector NOT set - already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, "setting wrapper framework version in injector: " + wrapperFrameworkVersion);
                a().setWrapperFrameworkVersion(wrapperFrameworkVersion);
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, e);
        }
    }

    private cg a() {
        if (this.e == null) {
            this.e = new ConfigurablePublisherModule();
        }
        return this.e;
    }

    @Override // com.vungle.publisher.cg
    public final void a(Context context, String str) {
        try {
            if (this.c) {
                Logger.d(Logger.INJECT_TAG, "already initialized");
            } else {
                Logger.d(Logger.INJECT_TAG, "initializing");
                cg cgVarA = a();
                cgVarA.a(context, str);
                ArrayList arrayList = new ArrayList();
                arrayList.add(cgVarA);
                arrayList.addAll(this.d);
                this.a = ObjectGraph.create(arrayList.toArray());
                this.c = true;
            }
        } catch (Exception e) {
            Logger.e(Logger.INJECT_TAG, "error initializing injector", e);
        }
    }
}
