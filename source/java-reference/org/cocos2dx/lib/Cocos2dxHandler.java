package org.cocos2dx.lib;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxHandler extends Handler {
    public static final int HANDLER_DISMISS_EDITBOX_DIALOG = 3;
    public static final int HANDLER_SHOW_DIALOG = 1;
    public static final int HANDLER_SHOW_EDITBOX_DIALOG = 2;
    private WeakReference<Cocos2dxActivity> mActivity;
    private Cocos2dxEditBoxDialog mLastEditor = null;

    public Cocos2dxHandler(Cocos2dxActivity activity) {
        this.mActivity = new WeakReference<>(activity);
    }

    protected void finalize() {
        try {
            this.mLastEditor = null;
            super.finalize();
        } catch (Throwable throwable) {
            Log.e("Cocos2dxHandler", "finalize failed.", throwable);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        switch (msg.what) {
            case 1:
                showDialog(msg);
                break;
            case 2:
                showEditBoxDialog(msg);
                break;
            case 3:
                dismissEditBoxDialog();
                break;
        }
    }

    private void showDialog(Message msg) {
        Cocos2dxActivity theActivity = this.mActivity.get();
        DialogMessage dialogMessage = (DialogMessage) msg.obj;
        new AlertDialog.Builder(theActivity).setTitle(dialogMessage.titile).setMessage(dialogMessage.message).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: org.cocos2dx.lib.Cocos2dxHandler.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
            }
        }).create().show();
    }

    private void showEditBoxDialog(Message msg) {
        EditBoxMessage editBoxMessage = (EditBoxMessage) msg.obj;
        Cocos2dxEditBoxDialog editbox = new Cocos2dxEditBoxDialog(this.mActivity.get(), editBoxMessage.title, editBoxMessage.content, editBoxMessage.inputMode, editBoxMessage.inputFlag, editBoxMessage.returnType, editBoxMessage.maxLength);
        editbox.show();
        this.mLastEditor = editbox;
    }

    private void dismissEditBoxDialog() {
        if (this.mLastEditor != null) {
            this.mLastEditor.dismissEditor();
            this.mLastEditor = null;
        }
    }

    public static class DialogMessage {
        public String message;
        public String titile;

        public DialogMessage(String title, String message) {
            this.titile = title;
            this.message = message;
        }
    }

    public static class EditBoxMessage {
        public String content;
        public int inputFlag;
        public int inputMode;
        public int maxLength;
        public int returnType;
        public String title;

        public EditBoxMessage(String title, String content, int inputMode, int inputFlag, int returnType, int maxLength) {
            this.content = content;
            this.title = title;
            this.inputMode = inputMode;
            this.inputFlag = inputFlag;
            this.returnType = returnType;
            this.maxLength = maxLength;
        }
    }
}
