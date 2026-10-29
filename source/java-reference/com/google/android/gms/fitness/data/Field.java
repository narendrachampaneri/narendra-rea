package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.mopub.mobileads.VastIconXmlManager;

/* JADX INFO: loaded from: classes2.dex */
public final class Field implements SafeParcelable {
    public static final int FORMAT_FLOAT = 2;
    public static final int FORMAT_INT32 = 1;
    public static final int FORMAT_MAP = 4;
    public static final int FORMAT_STRING = 3;
    public static final int MEAL_TYPE_BREAKFAST = 1;
    public static final int MEAL_TYPE_DINNER = 3;
    public static final int MEAL_TYPE_LUNCH = 2;
    public static final int MEAL_TYPE_SNACK = 4;
    public static final int MEAL_TYPE_UNKNOWN = 0;
    public static final String NUTRIENT_CALCIUM = "calcium";
    public static final String NUTRIENT_CHOLESTEROL = "cholesterol";
    public static final String NUTRIENT_DIETARY_FIBER = "dietary_fiber";
    public static final String NUTRIENT_IRON = "iron";
    public static final String NUTRIENT_MONOUNSATURATED_FAT = "fat.monounsaturated";
    public static final String NUTRIENT_POLYUNSATURATED_FAT = "fat.polyunsaturated";
    public static final String NUTRIENT_POTASSIUM = "potassium";
    public static final String NUTRIENT_PROTEIN = "protein";
    public static final String NUTRIENT_SATURATED_FAT = "fat.saturated";
    public static final String NUTRIENT_SODIUM = "sodium";
    public static final String NUTRIENT_SUGAR = "sugar";
    public static final String NUTRIENT_TOTAL_CARBS = "carbs.total";
    public static final String NUTRIENT_TOTAL_FAT = "fat.total";
    public static final String NUTRIENT_TRANS_FAT = "fat.trans";
    public static final String NUTRIENT_UNSATURATED_FAT = "fat.unsaturated";
    public static final String NUTRIENT_VITAMIN_A = "vitamin_a";
    public static final String NUTRIENT_VITAMIN_C = "vitamin_c";
    public static final int RESISTANCE_TYPE_BARBELL = 1;
    public static final int RESISTANCE_TYPE_BODY = 6;
    public static final int RESISTANCE_TYPE_CABLE = 2;
    public static final int RESISTANCE_TYPE_DUMBBELL = 3;
    public static final int RESISTANCE_TYPE_KETTLEBELL = 4;
    public static final int RESISTANCE_TYPE_MACHINE = 5;
    public static final int RESISTANCE_TYPE_UNKNOWN = 0;
    private final String mName;
    private final int mVersionCode;
    private final int zzawZ;
    private final Boolean zzaxa;
    public static final Field FIELD_ACTIVITY = zzdo("activity");
    public static final Field FIELD_CONFIDENCE = zzdp("confidence");
    public static final Field zzawM = zzds("activity_confidence");
    public static final Field FIELD_STEPS = zzdo("steps");
    public static final Field FIELD_DURATION = zzdo(VastIconXmlManager.DURATION);
    public static final Field zzawN = zzds("activity_duration");
    public static final Field zzawO = zzds("activity_duration.ascending");
    public static final Field zzawP = zzds("activity_duration.descending");
    public static final Field FIELD_BPM = zzdp("bpm");
    public static final Field FIELD_LATITUDE = zzdp("latitude");
    public static final Field FIELD_LONGITUDE = zzdp("longitude");
    public static final Field FIELD_ACCURACY = zzdp("accuracy");
    public static final Field FIELD_ALTITUDE = zzdq("altitude");
    public static final Field FIELD_DISTANCE = zzdp("distance");
    public static final Field FIELD_HEIGHT = zzdp("height");
    public static final Field FIELD_WEIGHT = zzdp("weight");
    public static final Field FIELD_CIRCUMFERENCE = zzdp("circumference");
    public static final Field FIELD_PERCENTAGE = zzdp("percentage");
    public static final Field FIELD_SPEED = zzdp("speed");
    public static final Field FIELD_RPM = zzdp("rpm");
    public static final Field FIELD_REVOLUTIONS = zzdo("revolutions");
    public static final String NUTRIENT_CALORIES = "calories";
    public static final Field FIELD_CALORIES = zzdp(NUTRIENT_CALORIES);
    public static final Field FIELD_WATTS = zzdp("watts");
    public static final Field FIELD_MEAL_TYPE = zzdo("meal_type");
    public static final Field FIELD_FOOD_ITEM = zzdr("food_item");
    public static final Field FIELD_NUTRIENTS = zzds("nutrients");
    public static final Field zzawQ = zzdp("elevation.change");
    public static final Field zzawR = zzds("elevation.gain");
    public static final Field zzawS = zzds("elevation.loss");
    public static final Field zzawT = zzdp("floors");
    public static final Field zzawU = zzds("floor.gain");
    public static final Field zzawV = zzds("floor.loss");
    public static final Field FIELD_EXERCISE = zzdr("exercise");
    public static final Field FIELD_REPETITIONS = zzdo("repetitions");
    public static final Field FIELD_RESISTANCE = zzdp("resistance");
    public static final Field FIELD_RESISTANCE_TYPE = zzdo("resistance_type");
    public static final Field FIELD_NUM_SEGMENTS = zzdo("num_segments");
    public static final Field FIELD_AVERAGE = zzdp("average");
    public static final Field FIELD_MAX = zzdp("max");
    public static final Field FIELD_MIN = zzdp("min");
    public static final Field FIELD_LOW_LATITUDE = zzdp("low_latitude");
    public static final Field FIELD_LOW_LONGITUDE = zzdp("low_longitude");
    public static final Field FIELD_HIGH_LATITUDE = zzdp("high_latitude");
    public static final Field FIELD_HIGH_LONGITUDE = zzdp("high_longitude");
    public static final Field zzawW = zzdp("x");
    public static final Field zzawX = zzdp("y");
    public static final Field zzawY = zzdp("z");
    public static final Parcelable.Creator<Field> CREATOR = new zzj();

    Field(int versionCode, String name, int format, Boolean optional) {
        this.mVersionCode = versionCode;
        this.mName = (String) zzx.zzz(name);
        this.zzawZ = format;
        this.zzaxa = optional;
    }

    private Field(String name, int format) {
        this(2, name, format, null);
    }

    private Field(String name, int format, Boolean optional) {
        this(2, name, format, optional);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static Field zza(String str, int i, Boolean bool) {
        byte b = -1;
        switch (str.hashCode()) {
            case -2131707655:
                if (str.equals("accuracy")) {
                    b = 0;
                }
                break;
            case -1992012396:
                if (str.equals(VastIconXmlManager.DURATION)) {
                    b = 12;
                }
                break;
            case -1655966961:
                if (str.equals("activity")) {
                    b = 1;
                }
                break;
            case -1579612127:
                if (str.equals("floor.gain")) {
                    b = ClosedCaptionCtrl.MID_ROW_CHAN_1;
                }
                break;
            case -1579449403:
                if (str.equals("floor.loss")) {
                    b = 18;
                }
                break;
            case -1569430471:
                if (str.equals("num_segments")) {
                    b = ClosedCaptionCtrl.TAB_OFFSET_CHAN_2;
                }
                break;
            case -1531570079:
                if (str.equals("elevation.change")) {
                    b = 13;
                }
                break;
            case -1439978388:
                if (str.equals("latitude")) {
                    b = 24;
                }
                break;
            case -1271636505:
                if (str.equals("floors")) {
                    b = 19;
                }
                break;
            case -1221029593:
                if (str.equals("height")) {
                    b = 21;
                }
                break;
            case -1133736764:
                if (str.equals("activity_duration")) {
                    b = 2;
                }
                break;
            case -1110756780:
                if (str.equals("food_item")) {
                    b = ClosedCaptionCtrl.MISC_CHAN_1;
                }
                break;
            case -921832806:
                if (str.equals("percentage")) {
                    b = ClosedCaptionCtrl.BACKSPACE;
                }
                break;
            case -791592328:
                if (str.equals("weight")) {
                    b = 42;
                }
                break;
            case -631448035:
                if (str.equals("average")) {
                    b = 6;
                }
                break;
            case -626344110:
                if (str.equals("high_longitude")) {
                    b = ClosedCaptionCtrl.TAB_OFFSET_CHAN_1;
                }
                break;
            case -619868540:
                if (str.equals("low_longitude")) {
                    b = 27;
                }
                break;
            case -494782871:
                if (str.equals("high_latitude")) {
                    b = 22;
                }
                break;
            case -437053898:
                if (str.equals("meal_type")) {
                    b = 29;
                }
                break;
            case -277306353:
                if (str.equals("circumference")) {
                    b = 9;
                }
                break;
            case -266093204:
                if (str.equals("nutrients")) {
                    b = ClosedCaptionCtrl.RESUME_CAPTION_LOADING;
                }
                break;
            case -168965370:
                if (str.equals(NUTRIENT_CALORIES)) {
                    b = 8;
                }
                break;
            case -126538880:
                if (str.equals("resistance_type")) {
                    b = 36;
                }
                break;
            case 120:
                if (str.equals("x")) {
                    b = 43;
                }
                break;
            case 121:
                if (str.equals("y")) {
                    b = ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY;
                }
                break;
            case 122:
                if (str.equals("z")) {
                    b = ClosedCaptionCtrl.CARRIAGE_RETURN;
                }
                break;
            case 97759:
                if (str.equals("bpm")) {
                    b = 7;
                }
                break;
            case 107876:
                if (str.equals("max")) {
                    b = ClosedCaptionCtrl.MISC_CHAN_2;
                }
                break;
            case 108114:
                if (str.equals("min")) {
                    b = 30;
                }
                break;
            case 113135:
                if (str.equals("rpm")) {
                    b = ClosedCaptionCtrl.ROLL_UP_CAPTIONS_3_ROWS;
                }
                break;
            case 109641799:
                if (str.equals("speed")) {
                    b = ClosedCaptionCtrl.ROLL_UP_CAPTIONS_4_ROWS;
                }
                break;
            case 109761319:
                if (str.equals("steps")) {
                    b = 40;
                }
                break;
            case 112903913:
                if (str.equals("watts")) {
                    b = ClosedCaptionCtrl.RESUME_DIRECT_CAPTIONING;
                }
                break;
            case 137365935:
                if (str.equals("longitude")) {
                    b = ClosedCaptionCtrl.MID_ROW_CHAN_2;
                }
                break;
            case 198162679:
                if (str.equals("low_latitude")) {
                    b = 26;
                }
                break;
            case 286612066:
                if (str.equals("activity_duration.descending")) {
                    b = 4;
                }
                break;
            case 288459765:
                if (str.equals("distance")) {
                    b = 11;
                }
                break;
            case 455965230:
                if (str.equals("activity_duration.ascending")) {
                    b = 3;
                }
                break;
            case 811264586:
                if (str.equals("revolutions")) {
                    b = ClosedCaptionCtrl.ROLL_UP_CAPTIONS_2_ROWS;
                }
                break;
            case 829251210:
                if (str.equals("confidence")) {
                    b = 10;
                }
                break;
            case 984367650:
                if (str.equals("repetitions")) {
                    b = 34;
                }
                break;
            case 1857734768:
                if (str.equals("elevation.gain")) {
                    b = 14;
                }
                break;
            case 1857897492:
                if (str.equals("elevation.loss")) {
                    b = 15;
                }
                break;
            case 1863800889:
                if (str.equals("resistance")) {
                    b = 35;
                }
                break;
            case 2036550306:
                if (str.equals("altitude")) {
                    b = 5;
                }
                break;
            case 2056323544:
                if (str.equals("exercise")) {
                    b = 16;
                }
                break;
        }
        switch (b) {
            case 0:
                return FIELD_ACCURACY;
            case 1:
                return FIELD_ACTIVITY;
            case 2:
                return zzawN;
            case 3:
                return zzawO;
            case 4:
                return zzawP;
            case 5:
                return FIELD_ALTITUDE;
            case 6:
                return FIELD_AVERAGE;
            case 7:
                return FIELD_BPM;
            case 8:
                return FIELD_CALORIES;
            case 9:
                return FIELD_CIRCUMFERENCE;
            case 10:
                return FIELD_CONFIDENCE;
            case 11:
                return FIELD_DISTANCE;
            case 12:
                return FIELD_DURATION;
            case 13:
                return zzawQ;
            case 14:
                return zzawR;
            case 15:
                return zzawS;
            case 16:
                return FIELD_EXERCISE;
            case 17:
                return zzawU;
            case 18:
                return zzawV;
            case 19:
                return zzawT;
            case 20:
                return FIELD_FOOD_ITEM;
            case 21:
                return FIELD_HEIGHT;
            case 22:
                return FIELD_HIGH_LATITUDE;
            case 23:
                return FIELD_HIGH_LONGITUDE;
            case 24:
                return FIELD_LATITUDE;
            case 25:
                return FIELD_LONGITUDE;
            case 26:
                return FIELD_LOW_LATITUDE;
            case 27:
                return FIELD_LOW_LONGITUDE;
            case 28:
                return FIELD_MAX;
            case 29:
                return FIELD_MEAL_TYPE;
            case 30:
                return FIELD_MIN;
            case 31:
                return FIELD_NUM_SEGMENTS;
            case 32:
                return FIELD_NUTRIENTS;
            case 33:
                return FIELD_PERCENTAGE;
            case 34:
                return FIELD_REPETITIONS;
            case 35:
                return FIELD_RESISTANCE;
            case 36:
                return FIELD_RESISTANCE_TYPE;
            case 37:
                return FIELD_REVOLUTIONS;
            case 38:
                return FIELD_RPM;
            case 39:
                return FIELD_SPEED;
            case 40:
                return FIELD_STEPS;
            case 41:
                return FIELD_WATTS;
            case 42:
                return FIELD_WEIGHT;
            case 43:
                return zzawW;
            case 44:
                return zzawX;
            case 45:
                return zzawY;
            default:
                return new Field(str, i, bool);
        }
    }

    private boolean zza(Field field) {
        return this.mName.equals(field.mName) && this.zzawZ == field.zzawZ;
    }

    private static Field zzdo(String str) {
        return new Field(str, 1);
    }

    private static Field zzdp(String str) {
        return new Field(str, 2);
    }

    private static Field zzdq(String str) {
        return new Field(str, 2, true);
    }

    private static Field zzdr(String str) {
        return new Field(str, 3);
    }

    private static Field zzds(String str) {
        return new Field(str, 4);
    }

    public static Field zzn(String str, int i) {
        return zza(str, i, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object that) {
        return this == that || ((that instanceof Field) && zza((Field) that));
    }

    public int getFormat() {
        return this.zzawZ;
    }

    public String getName() {
        return this.mName;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    public Boolean isOptional() {
        return this.zzaxa;
    }

    public String toString() {
        Object[] objArr = new Object[2];
        objArr[0] = this.mName;
        objArr[1] = this.zzawZ == 1 ? "i" : "f";
        return String.format("%s(%s)", objArr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        zzj.zza(this, dest, flags);
    }
}
