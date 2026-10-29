.class Lcom/android/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/util/IabHelper;->startSetup(Lcom/android/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/util/IabHelper;

.field final synthetic val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/android/util/IabHelper;Lcom/android/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/util/IabHelper;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    iput-object p2, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 222
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    iget-boolean v3, v3, Lcom/android/util/IabHelper;->mDisposed:Z

    if-eqz v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 225
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    iget-object v3, v3, Lcom/android/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    iget-object v3, v3, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 231
    .local v2, "response":I
    if-eqz v2, :cond_4

    .line 232
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/android/util/IabResult;

    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/android/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/util/IabResult;)V

    .line 236
    :cond_2
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/util/IabHelper;->mSubscriptionsSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v2    # "response":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_3

    .line 255
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/android/util/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/android/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/util/IabResult;)V

    .line 260
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "response":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    iget-object v3, v3, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 243
    if-nez v2, :cond_5

    .line 245
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/util/IabHelper;->mSubscriptionsSupported:Z

    .line 251
    :cond_5
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/util/IabHelper;->mSetupDone:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/android/util/IabHelper$1;->val$listener:Lcom/android/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/android/util/IabResult;

    const-string v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lcom/android/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/android/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/android/util/IabResult;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/util/IabHelper$1;->this$0:Lcom/android/util/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 218
    return-void
.end method
