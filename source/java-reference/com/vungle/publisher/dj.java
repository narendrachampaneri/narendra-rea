package com.vungle.publisher;

import android.os.Looper;
import com.vungle.log.Logger;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dj {
    static ExecutorService a = Executors.newCachedThreadPool();
    private static final Map<Class<?>, List<Class<?>>> b = new HashMap();
    private boolean k;
    private final ThreadLocal<a> f = new ThreadLocal<a>() { // from class: com.vungle.publisher.dj.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ a initialValue() {
            return new a();
        }
    };
    private final Map<Class<?>, CopyOnWriteArrayList<ds>> c = new HashMap();
    private final Map<Object, List<Class<?>>> d = new HashMap();
    private final Map<Class<?>, Object> e = new ConcurrentHashMap();
    private final dl g = new dl(this, Looper.getMainLooper());
    private final di h = new di(this);
    private final dh i = new dh(this);
    private final dr j = new dr();
    private boolean l = true;

    public final synchronized void a(Object obj, String str, boolean z) {
        CopyOnWriteArrayList<ds> copyOnWriteArrayList;
        Object obj2;
        for (dq dqVar : dr.a(obj.getClass(), str)) {
            this.k = true;
            Class<?> cls = dqVar.c;
            CopyOnWriteArrayList<ds> copyOnWriteArrayList2 = this.c.get(cls);
            ds dsVar = new ds(obj, dqVar);
            if (copyOnWriteArrayList2 == null) {
                CopyOnWriteArrayList<ds> copyOnWriteArrayList3 = new CopyOnWriteArrayList<>();
                this.c.put(cls, copyOnWriteArrayList3);
                copyOnWriteArrayList = copyOnWriteArrayList3;
            } else {
                Iterator<ds> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    if (it.next().equals(dsVar)) {
                        throw new dk("Subscriber " + obj.getClass() + " already registered to event " + cls);
                    }
                }
                copyOnWriteArrayList = copyOnWriteArrayList2;
            }
            int size = copyOnWriteArrayList.size();
            for (int i = 0; i <= size; i++) {
                if (i == size || dsVar.c > copyOnWriteArrayList.get(i).c) {
                    copyOnWriteArrayList.add(i, dsVar);
                    break;
                }
            }
            List<Class<?>> arrayList = this.d.get(obj);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.d.put(obj, arrayList);
            }
            arrayList.add(cls);
            if (z) {
                synchronized (this.e) {
                    obj2 = this.e.get(cls);
                }
                if (obj2 != null) {
                    a(dsVar, obj2, Looper.getMainLooper() == Looper.myLooper());
                }
            }
        }
    }

    public final synchronized void a(Object obj) {
        int i;
        int i2;
        List<Class<?>> list = this.d.get(obj);
        if (list != null) {
            Iterator<Class<?>> it = list.iterator();
            while (it.hasNext()) {
                CopyOnWriteArrayList<ds> copyOnWriteArrayList = this.c.get(it.next());
                if (copyOnWriteArrayList != null) {
                    int size = copyOnWriteArrayList.size();
                    int i3 = 0;
                    while (i3 < size) {
                        ds dsVar = copyOnWriteArrayList.get(i3);
                        if (dsVar.a == obj) {
                            dsVar.d = false;
                            copyOnWriteArrayList.remove(i3);
                            i = i3 - 1;
                            i2 = size - 1;
                        } else {
                            i = i3;
                            i2 = size;
                        }
                        size = i2;
                        i3 = i + 1;
                    }
                }
            }
            this.d.remove(obj);
        } else {
            Logger.w(Logger.EVENT_TAG, "Subscriber to unregister was not registered before: " + obj.getClass());
        }
    }

    public final void b(Object obj) {
        CopyOnWriteArrayList<ds> copyOnWriteArrayList;
        boolean z;
        a aVar = this.f.get();
        List<Object> list = aVar.a;
        list.add(obj);
        if (!aVar.b) {
            aVar.c = Looper.getMainLooper() == Looper.myLooper();
            aVar.b = true;
            if (aVar.f) {
                throw new dk("Internal error. Abort state was not reset");
            }
            while (!list.isEmpty()) {
                try {
                    Object objRemove = list.remove(0);
                    Class<?> cls = objRemove.getClass();
                    List<Class<?>> listA = a(cls);
                    int size = listA.size();
                    int i = 0;
                    boolean z2 = false;
                    while (i < size) {
                        Class<?> cls2 = listA.get(i);
                        synchronized (this) {
                            copyOnWriteArrayList = this.c.get(cls2);
                        }
                        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
                            z = z2;
                        } else {
                            for (ds dsVar : copyOnWriteArrayList) {
                                aVar.e = objRemove;
                                aVar.d = dsVar;
                                try {
                                    a(dsVar, objRemove, aVar.c);
                                    boolean z3 = aVar.f;
                                    aVar.e = null;
                                    aVar.d = null;
                                    aVar.f = false;
                                    if (z3) {
                                        break;
                                    }
                                } catch (Throwable th) {
                                    aVar.e = null;
                                    aVar.d = null;
                                    aVar.f = false;
                                    throw th;
                                }
                            }
                            z = true;
                        }
                        i++;
                        z2 = z;
                    }
                    if (!z2) {
                        Logger.d(Logger.EVENT_TAG, "No subscribers registered for event " + cls);
                        if (cls != dm.class && cls != dp.class) {
                            b(new dm(this, objRemove));
                        }
                    }
                } catch (Throwable th2) {
                    aVar.b = false;
                    aVar.c = false;
                    throw th2;
                }
            }
            aVar.b = false;
            aVar.c = false;
        }
    }

    private void a(ds dsVar, Object obj, boolean z) {
        switch (dsVar.b.b) {
            case PostThread:
                a(dsVar, obj);
                return;
            case MainThread:
                if (z) {
                    a(dsVar, obj);
                    return;
                }
                dl dlVar = this.g;
                dn dnVarA = dn.a(dsVar, obj);
                synchronized (dlVar) {
                    dlVar.a.a(dnVarA);
                    if (!dlVar.b) {
                        dlVar.b = true;
                        if (!dlVar.sendMessage(dlVar.obtainMessage())) {
                            throw new dk("Could not send handler message");
                        }
                    }
                }
                return;
            case BackgroundThread:
                if (z) {
                    di diVar = this.h;
                    dn dnVarA2 = dn.a(dsVar, obj);
                    synchronized (diVar) {
                        diVar.a.a(dnVarA2);
                        if (!diVar.b) {
                            diVar.b = true;
                            a.execute(diVar);
                        }
                        break;
                    }
                    return;
                }
                a(dsVar, obj);
                return;
            case Async:
                dh dhVar = this.i;
                dhVar.a.a(dn.a(dsVar, obj));
                a.execute(dhVar);
                return;
            default:
                throw new IllegalStateException("Unknown thread mode: " + dsVar.b.b);
        }
    }

    private static List<Class<?>> a(Class<?> cls) {
        List<Class<?>> arrayList;
        synchronized (b) {
            arrayList = b.get(cls);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                    arrayList.add(superclass);
                    a(arrayList, superclass.getInterfaces());
                }
                b.put(cls, arrayList);
            }
        }
        return arrayList;
    }

    private static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    final void a(dn dnVar) {
        Object obj = dnVar.a;
        ds dsVar = dnVar.b;
        dn.a(dnVar);
        if (dsVar.d) {
            a(dsVar, obj);
        }
    }

    private void a(ds dsVar, Object obj) throws Error {
        try {
            dsVar.b.a.invoke(dsVar.a, obj);
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Unexpected exception", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (obj instanceof dp) {
                Logger.e(Logger.EVENT_TAG, "SubscriberExceptionEvent subscriber " + dsVar.a.getClass() + " threw an exception", cause);
                dp dpVar = (dp) obj;
                Logger.e(Logger.EVENT_TAG, "Initial event " + dpVar.c + " caused exception in " + dpVar.d, dpVar.b);
            } else {
                if (this.l) {
                    Logger.e(Logger.EVENT_TAG, "Could not dispatch event: " + obj.getClass() + " to subscribing class " + dsVar.a.getClass(), cause);
                }
                b(new dp(this, cause, obj, dsVar.a));
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    static final class a {
        List<Object> a = new ArrayList();
        boolean b;
        boolean c;
        ds d;
        Object e;
        boolean f;

        a() {
        }
    }
}
