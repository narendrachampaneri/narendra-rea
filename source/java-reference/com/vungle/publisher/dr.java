package com.vungle.publisher;

import com.vungle.log.Logger;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
final class dr {
    private static final Map<String, List<dq>> a = new HashMap();
    private static final Map<Class<?>, Class<?>> b = new ConcurrentHashMap();

    dr() {
    }

    static List<dq> a(Class<?> cls, String str) {
        List<dq> list;
        dt dtVar;
        String str2 = cls.getName() + '.' + str;
        synchronized (a) {
            list = a.get(str2);
        }
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            HashSet hashSet = new HashSet();
            StringBuilder sb = new StringBuilder();
            for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
                String name = superclass.getName();
                if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.")) {
                    break;
                }
                for (Method method : superclass.getMethods()) {
                    String name2 = method.getName();
                    if (name2.startsWith(str)) {
                        int modifiers = method.getModifiers();
                        if ((modifiers & 1) != 0 && (modifiers & 1032) == 0) {
                            Class<?>[] parameterTypes = method.getParameterTypes();
                            if (parameterTypes.length == 1) {
                                String strSubstring = name2.substring(str.length());
                                if (strSubstring.length() == 0) {
                                    dtVar = dt.PostThread;
                                } else if (strSubstring.equals("MainThread")) {
                                    dtVar = dt.MainThread;
                                } else if (strSubstring.equals("BackgroundThread")) {
                                    dtVar = dt.BackgroundThread;
                                } else if (strSubstring.equals("Async")) {
                                    dtVar = dt.Async;
                                } else if (!b.containsKey(superclass)) {
                                    throw new dk("Illegal onEvent method, check for typos: " + method);
                                }
                                Class<?> cls2 = parameterTypes[0];
                                sb.setLength(0);
                                sb.append(name2);
                                sb.append('>').append(cls2.getName());
                                if (hashSet.add(sb.toString())) {
                                    arrayList.add(new dq(method, dtVar, cls2));
                                }
                            } else {
                                continue;
                            }
                        } else if (!b.containsKey(superclass)) {
                            Logger.d(Logger.EVENT_TAG, "Skipping method (not public, static or abstract): " + superclass + "." + name2);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                throw new dk("Subscriber " + cls + " has no public methods called " + str);
            }
            synchronized (a) {
                a.put(str2, arrayList);
            }
            return arrayList;
        }
        return list;
    }
}
