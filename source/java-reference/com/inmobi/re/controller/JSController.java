package com.inmobi.re.controller;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.NavigationStringEnum;
import com.inmobi.re.controller.util.TransitionStringEnum;
import java.lang.reflect.Field;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class JSController {
    public static final String EXIT = "exit";
    public static final String FULL_SCREEN = "fullscreen";
    public static final String STYLE_NORMAL = "normal";
    protected IMWebView imWebView;
    protected Context mContext;
    protected ExpandProperties expProps = new ExpandProperties();
    protected ExpandProperties temporaryexpProps = new ExpandProperties();

    public abstract void stopAllListeners();

    public static class PlayerProperties extends ReflectedParcelable {
        public static final Parcelable.Creator<PlayerProperties> CREATOR = new Parcelable.Creator<PlayerProperties>() { // from class: com.inmobi.re.controller.JSController.PlayerProperties.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PlayerProperties createFromParcel(Parcel parcel) {
                return new PlayerProperties(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PlayerProperties[] newArray(int i) {
                return new PlayerProperties[i];
            }
        };
        public boolean audioMuted;
        public boolean autoPlay;
        public boolean doLoop;
        public String id;
        public boolean showControl;
        public String startStyle;
        public String stopStyle;

        public PlayerProperties() {
            this.showControl = true;
            this.autoPlay = true;
            this.audioMuted = false;
            this.doLoop = false;
            this.stopStyle = JSController.STYLE_NORMAL;
            this.startStyle = JSController.STYLE_NORMAL;
            this.id = "";
        }

        public PlayerProperties(Parcel parcel) {
            super(parcel);
        }

        public void setStopStyle(String str) {
            this.stopStyle = str;
        }

        public void setProperties(boolean z, boolean z2, boolean z3, boolean z4, String str, String str2, String str3) {
            this.autoPlay = z2;
            this.showControl = z3;
            this.doLoop = z4;
            this.audioMuted = z;
            this.startStyle = str;
            this.stopStyle = str2;
            this.id = str3;
        }

        public boolean isAutoPlay() {
            return this.autoPlay;
        }

        public boolean showControl() {
            return this.showControl;
        }

        public boolean doLoop() {
            return this.doLoop;
        }

        public boolean doMute() {
            return this.audioMuted;
        }

        public boolean exitOnComplete() {
            return this.stopStyle.equalsIgnoreCase(JSController.EXIT);
        }

        public boolean isFullScreen() {
            return this.startStyle.equalsIgnoreCase(JSController.FULL_SCREEN);
        }

        public void setFullScreen() {
            this.startStyle = JSController.FULL_SCREEN;
        }
    }

    public static class ExpandProperties extends ReflectedParcelable {
        public static final Parcelable.Creator<ExpandProperties> CREATOR = new Parcelable.Creator<ExpandProperties>() { // from class: com.inmobi.re.controller.JSController.ExpandProperties.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ExpandProperties createFromParcel(Parcel parcel) {
                return new ExpandProperties(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ExpandProperties[] newArray(int i) {
                return new ExpandProperties[i];
            }
        };
        public int actualHeightRequested;
        public int actualWidthRequested;
        public int bottomStuff;
        public int currentX;
        public int currentY;
        public int height;
        public boolean isModal;
        public boolean lockOrientation;
        public String orientation;
        public int portraitHeightRequested;
        public int portraitWidthRequested;
        public String rotationAtExpand;
        public int topStuff;
        public boolean useCustomClose;
        public int width;
        public int x;
        public int y;
        public boolean zeroWidthHeight;

        public ExpandProperties() {
            reinitializeExpandProperties();
        }

        public void reinitializeExpandProperties() {
            this.width = 0;
            this.height = 0;
            this.x = -1;
            this.y = -1;
            this.useCustomClose = false;
            this.isModal = true;
            this.lockOrientation = false;
            this.orientation = "";
            this.actualWidthRequested = 0;
            this.actualHeightRequested = 0;
            this.topStuff = 0;
            this.bottomStuff = 0;
            this.portraitWidthRequested = 0;
            this.portraitHeightRequested = 0;
            this.zeroWidthHeight = false;
            this.rotationAtExpand = "";
            this.currentX = 0;
            this.currentY = 0;
        }

        protected ExpandProperties(Parcel parcel) {
            super(parcel);
        }
    }

    public static class OrientationProperties extends ReflectedParcelable {
        public static final Parcelable.Creator<OrientationProperties> CREATOR = new Parcelable.Creator<OrientationProperties>() { // from class: com.inmobi.re.controller.JSController.OrientationProperties.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public OrientationProperties createFromParcel(Parcel parcel) {
                return new OrientationProperties(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public OrientationProperties[] newArray(int i) {
                return new OrientationProperties[i];
            }
        };
        public boolean allowOrientationChange;
        public String forceOrientation;

        public OrientationProperties() {
            initializeOrientationProperties();
        }

        public void initializeOrientationProperties() {
            this.allowOrientationChange = true;
            this.forceOrientation = "";
        }

        protected OrientationProperties(Parcel parcel) {
            super(parcel);
        }
    }

    public static class ResizeProperties extends ReflectedParcelable {
        public static final Parcelable.Creator<ResizeProperties> CREATOR = new Parcelable.Creator<ResizeProperties>() { // from class: com.inmobi.re.controller.JSController.ResizeProperties.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResizeProperties createFromParcel(Parcel parcel) {
                return new ResizeProperties(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResizeProperties[] newArray(int i) {
                return new ResizeProperties[i];
            }
        };
        public boolean allowOffscreen;
        public String customClosePosition;
        public int height;
        public int offsetX;
        public int offsetY;
        public int width;

        public ResizeProperties() {
            initializeResizeProperties();
        }

        public void initializeResizeProperties() {
            this.offsetY = 0;
            this.offsetX = 0;
            this.height = 0;
            this.width = 0;
            this.allowOffscreen = false;
            this.customClosePosition = "top-right";
        }

        protected ResizeProperties(Parcel parcel) {
            super(parcel);
        }
    }

    public static class Dimensions extends ReflectedParcelable {
        public static final Parcelable.Creator<Dimensions> CREATOR = new Parcelable.Creator<Dimensions>() { // from class: com.inmobi.re.controller.JSController.Dimensions.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Dimensions createFromParcel(Parcel parcel) {
                return new Dimensions(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Dimensions[] newArray(int i) {
                return new Dimensions[i];
            }
        };
        public int height;
        public int width;
        public int x;
        public int y;

        public Dimensions() {
            this.x = -1;
            this.y = -1;
            this.width = -1;
            this.height = -1;
        }

        protected Dimensions(Parcel parcel) {
            super(parcel);
        }

        public String toString() {
            return "x: " + this.x + ", y: " + this.y + ", width: " + this.width + ", height: " + this.height;
        }
    }

    public static class Properties extends ReflectedParcelable {
        public static final Parcelable.Creator<Properties> CREATOR = new Parcelable.Creator<Properties>() { // from class: com.inmobi.re.controller.JSController.Properties.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Properties createFromParcel(Parcel parcel) {
                return new Properties(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Properties[] newArray(int i) {
                return new Properties[i];
            }
        };
        public int backgroundColor;
        public float backgroundOpacity;
        public boolean useBackground;

        protected Properties(Parcel parcel) {
            super(parcel);
        }

        public Properties() {
            this.useBackground = false;
            this.backgroundColor = 0;
            this.backgroundOpacity = 0.0f;
        }
    }

    public JSController(IMWebView iMWebView, Context context) {
        this.imWebView = iMWebView;
        this.mContext = context;
    }

    protected static Object getFromJSON(JSONObject jSONObject, Class<?> cls) throws IllegalAccessException, InstantiationException, NumberFormatException, NullPointerException {
        int iIntValue;
        Field[] declaredFields = cls.getDeclaredFields();
        Object objNewInstance = cls.newInstance();
        for (Field field : declaredFields) {
            String strReplace = field.getName().replace('_', '-');
            String string = field.getType().toString();
            try {
                if (string.equals("int")) {
                    String lowerCase = jSONObject.getString(strReplace).toLowerCase(Locale.ENGLISH);
                    try {
                        if (lowerCase.startsWith("#")) {
                            iIntValue = -1;
                            try {
                                if (lowerCase.startsWith("#0x")) {
                                    iIntValue = Integer.decode(lowerCase.substring(1)).intValue();
                                } else {
                                    iIntValue = Integer.parseInt(lowerCase.substring(1), 16);
                                }
                            } catch (NumberFormatException e) {
                            }
                        } else {
                            iIntValue = Integer.parseInt(lowerCase);
                        }
                    } catch (NumberFormatException e2) {
                        iIntValue = 0;
                    }
                    field.set(objNewInstance, Integer.valueOf(iIntValue));
                } else if (string.equals("class java.lang.String")) {
                    field.set(objNewInstance, jSONObject.getString(strReplace));
                } else if (string.equals("boolean")) {
                    field.set(objNewInstance, Boolean.valueOf(jSONObject.getBoolean(strReplace)));
                } else if (string.equals("float")) {
                    field.set(objNewInstance, Float.valueOf(Float.parseFloat(jSONObject.getString(strReplace))));
                } else if (string.equals("class com.mraid.NavigationStringEnum")) {
                    field.set(objNewInstance, NavigationStringEnum.fromString(jSONObject.getString(strReplace)));
                } else if (string.equals("class com.mraid.TransitionStringEnum")) {
                    field.set(objNewInstance, TransitionStringEnum.fromString(jSONObject.getString(strReplace)));
                }
            } catch (JSONException e3) {
            }
        }
        return objNewInstance;
    }

    public static class ReflectedParcelable implements Parcelable {
        public ReflectedParcelable() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        protected ReflectedParcelable(Parcel parcel) {
            for (Field field : getClass().getDeclaredFields()) {
                try {
                    Class<?> type = field.getType();
                    if (type.isEnum()) {
                        String string = type.toString();
                        if (string.equals("class com.mraid.NavigationStringEnum")) {
                            field.set(this, NavigationStringEnum.fromString(parcel.readString()));
                        } else if (string.equals("class com.mraid.TransitionStringEnum")) {
                            field.set(this, TransitionStringEnum.fromString(parcel.readString()));
                        }
                    } else if (!(field.get(this) instanceof Parcelable.Creator)) {
                        field.set(this, parcel.readValue(null));
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                    return;
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            for (Field field : getClass().getDeclaredFields()) {
                try {
                    Class<?> type = field.getType();
                    if (type.isEnum()) {
                        String string = type.toString();
                        if (string.equals("class com.mraid.NavigationStringEnum")) {
                            parcel.writeString(((NavigationStringEnum) field.get(this)).getText());
                        } else if (string.equals("class com.mraid.TransitionStringEnum")) {
                            parcel.writeString(((TransitionStringEnum) field.get(this)).getText());
                        }
                    } else {
                        Object obj = field.get(this);
                        if (!(obj instanceof Parcelable.Creator)) {
                            parcel.writeValue(obj);
                        }
                    }
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                    return;
                } catch (IllegalArgumentException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
        }
    }
}
