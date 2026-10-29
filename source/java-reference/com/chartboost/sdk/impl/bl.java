package com.chartboost.sdk.impl;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class bl {
    private static final String[] a = {"arg:left", "arg:center", "arg:right"};
    private b b;

    public static abstract class b {
        public abstract void a(bl blVar, int i);

        public void a(bl blVar) {
        }
    }

    public bl(Context context, Bundle bundle, b bVar) {
        this.b = bVar;
        String string = bundle.getString("arg:title");
        String string2 = bundle.getString("arg:message");
        final int i = bundle.getInt("arg:default", -1);
        final ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 3; i2++) {
            String string3 = bundle.getString(a[i2]);
            if (!TextUtils.isEmpty(string3)) {
                arrayList.add(string3);
            }
        }
        AlertDialog.Builder message = new AlertDialog.Builder(context).setTitle(string).setMessage(string2);
        final int size = arrayList.size();
        switch (size) {
            case 3:
                message.setNegativeButton((CharSequence) arrayList.get(2), (DialogInterface.OnClickListener) null);
            case 2:
                message.setNeutralButton((CharSequence) arrayList.get(1), (DialogInterface.OnClickListener) null);
            case 1:
                message.setPositiveButton((CharSequence) arrayList.get(0), (DialogInterface.OnClickListener) null);
                break;
        }
        final AlertDialog alertDialogCreate = message.create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.chartboost.sdk.impl.bl.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface d) {
                Button[] buttonArrB = bl.b(alertDialogCreate);
                int i3 = 0;
                while (true) {
                    final int i4 = i3;
                    if (i4 < size) {
                        CharSequence charSequence = (CharSequence) arrayList.get(i4);
                        Button button = buttonArrB[i4];
                        if (i == i4) {
                            button.setTypeface(null, 1);
                        }
                        button.setText(charSequence);
                        button.setOnClickListener(new View.OnClickListener() { // from class: com.chartboost.sdk.impl.bl.1.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View v) {
                                if (bl.this.b != null) {
                                    bl.this.b.a(bl.this, i4);
                                }
                                alertDialogCreate.dismiss();
                            }
                        });
                        i3 = i4 + 1;
                    } else {
                        return;
                    }
                }
            }
        });
        alertDialogCreate.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.chartboost.sdk.impl.bl.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface arg0) {
                bl.this.b.a(bl.this);
            }
        });
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Button[] b(AlertDialog alertDialog) {
        ViewGroup viewGroup = (ViewGroup) alertDialog.getButton(-1).getParent();
        int childCount = viewGroup.getChildCount();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0 && (childAt instanceof Button)) {
                arrayList.add((Button) childAt);
            }
        }
        Button[] buttonArr = new Button[arrayList.size()];
        arrayList.toArray(buttonArr);
        return buttonArr;
    }

    public static class a {
        private final Bundle a = new Bundle();

        public a a(String str) {
            this.a.putString("arg:title", str);
            return this;
        }

        public a b(String str) {
            this.a.putString("arg:message", str);
            return this;
        }

        public a c(String str) {
            this.a.putString("arg:left", str);
            return this;
        }

        public a d(String str) {
            this.a.putString("arg:right", str);
            return this;
        }

        public bl a(Context context, b bVar) {
            return new bl(context, this.a, bVar);
        }
    }
}
