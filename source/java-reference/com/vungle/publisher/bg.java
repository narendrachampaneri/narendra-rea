package com.vungle.publisher;

import android.database.Cursor;
import android.database.SQLException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class bg {
    public static Boolean a(Cursor cursor, String str) throws SQLException {
        Integer numD = d(cursor, str);
        if (numD == null) {
            return null;
        }
        switch (numD.intValue()) {
            case 0:
                return Boolean.FALSE;
            case 1:
                return Boolean.TRUE;
            default:
                throw new SQLException("invalid boolean value " + numD + " for column " + str);
        }
    }

    public static <E extends Enum<E>> E a(Cursor cursor, String str, Class<E> cls) throws SQLException {
        try {
            return (E) a(cursor, cursor.getColumnIndexOrThrow(str), cls);
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    private static <E extends Enum<E>> E a(Cursor cursor, int i, Class<E> cls) throws SQLException {
        String string = cursor.getString(i);
        try {
            if (cursor.isNull(i)) {
                return null;
            }
            return (E) Enum.valueOf(cls, string);
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid enum: " + string);
        }
    }

    public static Float b(Cursor cursor, String str) throws SQLException {
        try {
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
            if (cursor.isNull(columnIndexOrThrow)) {
                return null;
            }
            return Float.valueOf(cursor.getFloat(columnIndexOrThrow));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static int c(Cursor cursor, String str) throws SQLException {
        try {
            Integer numA = a(cursor, cursor.getColumnIndexOrThrow(str));
            if (numA == null) {
                return 0;
            }
            return numA.intValue();
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static Integer d(Cursor cursor, String str) throws SQLException {
        try {
            return a(cursor, cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    private static Integer a(Cursor cursor, int i) throws SQLException {
        if (cursor.isNull(i)) {
            return null;
        }
        return Integer.valueOf(cursor.getInt(i));
    }

    public static Long e(Cursor cursor, String str) throws SQLException {
        try {
            int columnIndexOrThrow = cursor.getColumnIndexOrThrow(str);
            if (cursor.isNull(columnIndexOrThrow)) {
                return null;
            }
            return Long.valueOf(cursor.getLong(columnIndexOrThrow));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static String f(Cursor cursor, String str) throws SQLException {
        try {
            return cursor.getString(cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static String a(int i) {
        if (i <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder((i << 1) - 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }
}
