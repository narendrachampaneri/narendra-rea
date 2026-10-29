package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class TintResources extends Resources {
    private final Context mContext;

    public TintResources(@NonNull Context context, @NonNull Resources res) {
        super(res.getAssets(), res.getDisplayMetrics(), res.getConfiguration());
        this.mContext = context;
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int id) throws Resources.NotFoundException {
        return AppCompatDrawableManager.get().onDrawableLoadedFromResources(this.mContext, this, id);
    }

    final Drawable superGetDrawable(int id) {
        return super.getDrawable(id);
    }
}
