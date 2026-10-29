package com.amazon.identity.auth.device;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.amazon.identity.auth.device.utils.MAPLog;

/* JADX INFO: loaded from: classes.dex */
public class AuthError extends Exception implements Parcelable {
    public static final String AUTH_ERROR_EXECEPTION = "AUTH_ERROR_EXECEPTION";
    public static final int RESULT_AUTH_ERROR = 1;
    private static final long serialVersionUID = 1;
    private final ERROR_TYPE _type;
    private static final String LOG_TAG = AuthError.class.getName();
    public static final Parcelable.Creator<AuthError> CREATOR = new Parcelable.Creator<AuthError>() { // from class: com.amazon.identity.auth.device.AuthError.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthError createFromParcel(Parcel in) {
            return new AuthError(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AuthError[] newArray(int size) {
            return new AuthError[size];
        }
    };

    public enum ERROR_CATEGORY {
        ACTION,
        BAD_REQUEST,
        NETWORK,
        INTERNAL,
        UNKNOWN
    }

    public enum ERROR_TYPE {
        ERROR_INVALID_TOKEN(ERROR_CATEGORY.ACTION),
        ERROR_INVALID_GRANT(ERROR_CATEGORY.ACTION),
        ERROR_INVALID_CLIENT(ERROR_CATEGORY.ACTION),
        ERROR_INVALID_SCOPE(ERROR_CATEGORY.ACTION),
        ERROR_UNAUTHORIZED_CLIENT(ERROR_CATEGORY.ACTION),
        ERROR_WEBVIEW_SSL(ERROR_CATEGORY.ACTION),
        ERROR_ACCESS_DENIED(ERROR_CATEGORY.ACTION),
        ERROR_COM(ERROR_CATEGORY.NETWORK),
        ERROR_IO(ERROR_CATEGORY.NETWORK),
        ERROR_UNKNOWN(ERROR_CATEGORY.UNKNOWN),
        ERROR_BAD_PARAM(ERROR_CATEGORY.INTERNAL),
        ERROR_JSON(ERROR_CATEGORY.INTERNAL),
        ERROR_PARSE(ERROR_CATEGORY.INTERNAL),
        ERROR_SERVER_REPSONSE(ERROR_CATEGORY.INTERNAL),
        ERROR_DATA_STORAGE(ERROR_CATEGORY.INTERNAL),
        ERROR_THREAD(ERROR_CATEGORY.INTERNAL),
        ERROR_DCP_DMS(ERROR_CATEGORY.ACTION),
        ERROR_FORCE_UPDATE(ERROR_CATEGORY.ACTION),
        ERROR_REVOKE_AUTH(ERROR_CATEGORY.INTERNAL),
        ERROR_AUTH_DIALOG(ERROR_CATEGORY.INTERNAL),
        ERROR_BAD_API_PARAM(ERROR_CATEGORY.BAD_REQUEST),
        ERROR_INIT(ERROR_CATEGORY.BAD_REQUEST),
        ERROR_RESOURCES(ERROR_CATEGORY.BAD_REQUEST),
        ERROR_DIRECTED_ID_NOT_FOUND(ERROR_CATEGORY.BAD_REQUEST),
        ERROR_INVALID_API(ERROR_CATEGORY.BAD_REQUEST),
        ERROR_SECURITY(ERROR_CATEGORY.BAD_REQUEST);

        private final ERROR_CATEGORY _category;

        ERROR_TYPE(ERROR_CATEGORY category) {
            this._category = category;
        }

        public ERROR_CATEGORY getCategory() {
            return this._category;
        }
    }

    public AuthError(String detailMessage, ERROR_TYPE type) {
        super(detailMessage);
        this._type = type;
    }

    public AuthError(String detailMessage, Throwable throwable, ERROR_TYPE type) {
        super(detailMessage, throwable);
        this._type = type;
    }

    public ERROR_CATEGORY getCategory() {
        return this._type.getCategory();
    }

    public ERROR_TYPE getType() {
        return this._type;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "AuthError cat= " + this._type.getCategory() + " type=" + this._type + " - " + super.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AuthError(Parcel source) {
        this(source.readString(), (Throwable) source.readValue(Throwable.class.getClassLoader()), (ERROR_TYPE) source.readSerializable());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(getMessage());
        if (getCause() != null) {
            dest.writeValue(getCause());
        } else {
            dest.writeValue(null);
        }
        dest.writeSerializable(this._type);
    }

    public static AuthError extractError(Intent intent) {
        try {
            AuthError authError = (AuthError) intent.getParcelableExtra(AUTH_ERROR_EXECEPTION);
            return authError;
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "Error Extracting AuthError");
            return null;
        }
    }

    public static AuthError extractError(Bundle bundle) {
        try {
            AuthError authError = (AuthError) bundle.getParcelable(AUTH_ERROR_EXECEPTION);
            return authError;
        } catch (Exception e) {
            MAPLog.e(LOG_TAG, "Error Extracting AuthError");
            return null;
        }
    }

    public static Bundle getErrorBundle(AuthError e) {
        Bundle errorBundle = new Bundle();
        errorBundle.putParcelable(AUTH_ERROR_EXECEPTION, e);
        return errorBundle;
    }

    public static Bundle getErrorBundle(Intent intent) {
        return getErrorBundle(extractError(intent));
    }

    public static <T> Bundle getErrorBundle(Throwable throwable, Class<T> c, ERROR_TYPE authErrorType) {
        return getErrorBundle(getAuthError(throwable, c, authErrorType));
    }

    public static <T> AuthError getAuthError(Throwable throwable, Class<T> c) {
        return getAuthError(throwable, c, ERROR_TYPE.ERROR_UNKNOWN);
    }

    public static <T> AuthError getAuthError(Throwable throwable, Class<T> c, ERROR_TYPE type) {
        return new AuthError("Unexpected error in " + c.getName(), throwable, type);
    }
}
