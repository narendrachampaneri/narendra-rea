package android.support.v7.media;

/* JADX INFO: loaded from: classes.dex */
final class MediaRouterJellybeanMr2 {
    MediaRouterJellybeanMr2() {
    }

    public static Object getDefaultRoute(Object routerObj) {
        return ((android.media.MediaRouter) routerObj).getDefaultRoute();
    }

    public static void addCallback(Object routerObj, int types, Object callbackObj, int flags) {
        ((android.media.MediaRouter) routerObj).addCallback(types, (android.media.MediaRouter.Callback) callbackObj, flags);
    }

    public static final class RouteInfo {
        public static CharSequence getDescription(Object routeObj) {
            return ((android.media.MediaRouter.RouteInfo) routeObj).getDescription();
        }

        public static boolean isConnecting(Object routeObj) {
            return ((android.media.MediaRouter.RouteInfo) routeObj).isConnecting();
        }
    }

    public static final class UserRouteInfo {
        public static void setDescription(Object routeObj, CharSequence description) {
            ((android.media.MediaRouter.UserRouteInfo) routeObj).setDescription(description);
        }
    }
}
