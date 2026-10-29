package com.amazon.identity.auth.device.token;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Time;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.utils.MAPLog;
import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TimeZone;
import org.apache.http.cookie.Cookie;

/* JADX INFO: loaded from: classes.dex */
public class MAPCookie implements Cookie, Token, Serializable {
    private static final String COOKIE_ATTRIBUTE_SEPERATOR = ";";
    public static final String COOKIE_DATE_FORMAT = "dd MMM yyyy kk:mm:ss z";
    private static final String COOKIE_NAME_VALUE_SEPERATOR = "=";
    private static final String DOMAIN_PREFIX = "www";
    private static final String DOT = ".";
    private static final String EMPTY_COOKIE = "";
    private static final String GMT = "GMT";
    public static final String KEY_COMMENT = "Comment";
    public static final String KEY_COMMENT_URL = "CommentUrl";
    public static final String KEY_DIRECTED_ID = "DirectedId";
    public static final String KEY_DOMAIN = "Domain";
    public static final String KEY_EXPIRES = "Expires";
    public static final String KEY_HTTP_ONLY = "HttpOnly";
    public static final String KEY_NAME = "Name";
    public static final String KEY_PATH = "Path";
    public static final String KEY_PERSISTANT = "Persistant";
    public static final String KEY_SECURE = "Secure";
    public static final String KEY_VALUE = "Value";
    public static final String KEY_VERSION = "Version";
    private static final String LOG_TAG = MAPCookie.class.getName();
    public static final int NO_VERSION = -1;
    private static final long serialVersionUID = 551200964665L;
    private final Map<String, String> _cookieData;
    private final transient Time _localCreationTimestamp;
    private int[] _ports;

    private class CookieAttribute {
        private static final String DOMAIN = "; domain=";
        private static final String EXPIRES = "; expires=";
        private static final String HTTP_ONLY = "; httponly";
        private static final String PATH = "; path=/";
        private static final String SECURE = "; secure";

        private CookieAttribute() {
        }
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getType() {
        return getName();
    }

    public MAPCookie(String name, String value, String domain, String directedId, boolean isSecure) {
        this._localCreationTimestamp = new Time();
        this._cookieData = new HashMap();
        this._cookieData.put(KEY_NAME, name);
        this._cookieData.put(KEY_VALUE, value);
        this._cookieData.put("DirectedId", directedId);
        this._cookieData.put(KEY_DOMAIN, domain);
        setSecure(isSecure);
        logCookie();
    }

    public MAPCookie(Map<String, String> cookieData) throws AuthError {
        this._localCreationTimestamp = new Time();
        this._cookieData = cookieData;
        logCookie();
    }

    private void logCookie() {
        MAPLog.pii(LOG_TAG, "Creating Cookie from data. name=" + getName(), "domain:" + getDomain() + " directedId:" + getDirectedId() + " cookie:" + getValue());
    }

    public boolean hasExpired() {
        return isExpired(Calendar.getInstance().getTime());
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public Time getLocalTimestamp() {
        return this._localCreationTimestamp;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public Map<String, String> getData() {
        return this._cookieData;
    }

    @Override // com.amazon.identity.auth.device.token.Token
    public String getDirectedId() {
        return getAttribute("DirectedId");
    }

    public boolean isHttpOnly() {
        String httpOnly = getAttribute(KEY_HTTP_ONLY);
        if (TextUtils.isEmpty(httpOnly)) {
            return false;
        }
        return Boolean.getBoolean(httpOnly);
    }

    public void setHttpOnly(boolean httpOnly) {
        this._cookieData.put(KEY_HTTP_ONLY, Boolean.toString(httpOnly));
    }

    @Override // org.apache.http.cookie.Cookie
    public String getComment() {
        return getAttribute(KEY_COMMENT);
    }

    @Override // org.apache.http.cookie.Cookie
    public String getCommentURL() {
        return getAttribute(KEY_COMMENT_URL);
    }

    @Override // org.apache.http.cookie.Cookie
    public String getDomain() {
        return getAttribute(KEY_DOMAIN);
    }

    @Override // org.apache.http.cookie.Cookie
    public Date getExpiryDate() {
        String sExpiryDate = getAttribute("Expires");
        if (sExpiryDate == null) {
            return null;
        }
        try {
            return getCookieExpireDate(sExpiryDate);
        } catch (ParseException e) {
            MAPLog.e(LOG_TAG, "Date parse error on MAP Cookie", e);
            return null;
        }
    }

    public void setExpiryDate(String expiryDate) {
        setAttribute("Expires", expiryDate);
    }

    @Override // org.apache.http.cookie.Cookie
    public String getName() {
        return getAttribute(KEY_NAME);
    }

    @Override // org.apache.http.cookie.Cookie
    public String getPath() {
        return getAttribute(KEY_PATH);
    }

    public void setPath(String path) {
        setAttribute(KEY_PATH, path);
    }

    @Override // org.apache.http.cookie.Cookie
    public int[] getPorts() {
        return this._ports;
    }

    public void setPorts(int[] ports) {
        this._ports = new int[ports.length];
        System.arraycopy(ports, 0, this._ports, 0, ports.length);
    }

    @Override // org.apache.http.cookie.Cookie
    public String getValue() {
        return getAttribute(KEY_VALUE);
    }

    @Override // org.apache.http.cookie.Cookie
    public int getVersion() {
        String version = getAttribute(KEY_VERSION);
        if (TextUtils.isEmpty(version)) {
            return -1;
        }
        return Integer.parseInt(getAttribute(KEY_VERSION));
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isExpired(Date date) {
        if (getExpiryDate() == null) {
            return false;
        }
        if (date == null) {
            date = Calendar.getInstance().getTime();
        }
        return getExpiryDate().before(date);
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isPersistent() {
        return Boolean.parseBoolean(getAttribute(KEY_PERSISTANT));
    }

    @Override // org.apache.http.cookie.Cookie
    public boolean isSecure() {
        return Boolean.parseBoolean(getAttribute(KEY_SECURE));
    }

    protected void setSecure(boolean isSecure) {
        setAttribute(KEY_SECURE, Boolean.toString(isSecure));
    }

    public String getAttribute(String name) {
        return this._cookieData.get(name);
    }

    public String setAttribute(String name, String value) {
        return this._cookieData.put(name, value);
    }

    public static String[] extractCookieStringArray(List<Cookie> cookies) {
        if (cookies == null) {
            return null;
        }
        List<String> returnCookies = new ArrayList<>();
        for (Cookie cookie : cookies) {
            returnCookies.add(getSetCookieHeader(cookie));
        }
        return (String[]) returnCookies.toArray(new String[returnCookies.size()]);
    }

    public static final String getSetCookieHeader(Cookie cookie) {
        StringBuilder cookieSB = new StringBuilder(cookie.getName().trim());
        cookieSB.append(COOKIE_NAME_VALUE_SEPERATOR);
        cookieSB.append(cookie.getValue().trim());
        cookieSB.append("; path=/");
        cookieSB.append("; domain=" + cookie.getDomain().trim());
        if (cookie.isSecure()) {
            cookieSB.append("; secure");
        }
        Date date = cookie.getExpiryDate();
        if (date != null) {
            cookieSB.append("; expires=");
            if (date.before(Calendar.getInstance().getTime())) {
                MAPLog.i(LOG_TAG, "Cookie " + cookie.getName() + " expired : " + date);
            }
            cookieSB.append(formatDate(date));
        }
        return cookieSB.toString();
    }

    private static final String getClearSetCookieHeader(Cookie cookie) {
        StringBuilder cookieSB = new StringBuilder(cookie.getName().trim());
        cookieSB.append(COOKIE_NAME_VALUE_SEPERATOR);
        cookieSB.append("");
        cookieSB.append("; path=/");
        cookieSB.append("; domain=" + cookie.getDomain().trim());
        if (cookie.isSecure()) {
            cookieSB.append("; secure");
        }
        Date date = cookie.getExpiryDate();
        if (date != null) {
            cookieSB.append("; expires=");
            if (date.before(Calendar.getInstance().getTime())) {
                MAPLog.i(LOG_TAG, "Cookie " + cookie.getName() + " expired : " + date);
            }
            cookieSB.append(formatDate(date));
        }
        return cookieSB.toString();
    }

    public static String getCookiesStringFromCookieManager(Context context, String domain) {
        CookieSyncManager manager;
        try {
            manager = CookieSyncManager.getInstance();
        } catch (IllegalStateException e) {
            MAPLog.i(LOG_TAG, "CookieSyncManager not yet created... creating");
            CookieSyncManager.createInstance(context);
            manager = CookieSyncManager.getInstance();
        }
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        manager.sync();
        String getCookieDomain = domain;
        if (getCookieDomain.startsWith(DOT)) {
            getCookieDomain = "www" + getCookieDomain;
        }
        String cookies = cookieManager.getCookie(getCookieDomain);
        MAPLog.i(LOG_TAG, "Extracting cookies from CookieManager for domain=" + getCookieDomain);
        return cookies;
    }

    public static List<Cookie> getCookiesFromCookieManager(Context context, String domain, String directedId) throws AuthError {
        String cookies = getCookiesStringFromCookieManager(context, domain);
        MAPLog.pii(LOG_TAG, "Extracting cookie list for domain=" + domain, "directedId=" + directedId);
        List<Cookie> cookieList = new ArrayList<>();
        if (cookies != null) {
            StringTokenizer cookiesParser = new StringTokenizer(cookies, COOKIE_ATTRIBUTE_SEPERATOR);
            while (cookiesParser.hasMoreTokens()) {
                String cookie = cookiesParser.nextToken();
                StringTokenizer cookieParser = new StringTokenizer(cookie.trim(), COOKIE_NAME_VALUE_SEPERATOR);
                if (cookieParser.hasMoreTokens()) {
                    String cookieName = cookieParser.nextToken();
                    String cookieValue = "";
                    if (cookieParser.hasMoreTokens()) {
                        cookieValue = cookieParser.nextToken();
                    }
                    cookieList.add(new MAPCookie(cookieName, cookieValue, domain, directedId, false));
                }
            }
        } else {
            MAPLog.i(LOG_TAG, "No cookies in Cookie manager for " + domain);
        }
        return cookieList;
    }

    private static Date getCookieExpireDate(String expiryDate) throws ParseException {
        DateFormat format = new SimpleDateFormat(COOKIE_DATE_FORMAT, Locale.US);
        format.setTimeZone(TimeZone.getTimeZone(GMT));
        return format.parse(expiryDate);
    }

    public static String formatDate(Date date) {
        DateFormat format = new SimpleDateFormat(COOKIE_DATE_FORMAT, Locale.US);
        format.setTimeZone(TimeZone.getTimeZone(GMT));
        return format.format(date);
    }

    public static void clearCookieInCookieManager(Context context, Cookie cookie, String url, String directedId) throws AuthError {
        CookieSyncManager manager;
        try {
            manager = CookieSyncManager.getInstance();
        } catch (IllegalStateException e) {
            MAPLog.i(LOG_TAG, "CookieSyncManager not yet created... creating");
            CookieSyncManager.createInstance(context);
            manager = CookieSyncManager.getInstance();
        }
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        manager.sync();
        String cookieString = getClearSetCookieHeader(cookie);
        cookieManager.setCookie(url, cookieString);
        manager.sync();
    }
}
