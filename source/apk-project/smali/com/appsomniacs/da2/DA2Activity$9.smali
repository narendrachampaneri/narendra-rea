.class Lcom/appsomniacs/da2/DA2Activity$9;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/android/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->googlePlayIabSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$9;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/util/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/android/util/IabResult;

    .prologue
    .line 2080
    invoke-virtual {p1}, Lcom/android/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$9;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up in-app billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$9;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem setting up in-app billing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$9;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryVerifyInventory()V

    goto :goto_0
.end method
