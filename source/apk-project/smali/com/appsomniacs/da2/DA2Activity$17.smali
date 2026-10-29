.class Lcom/appsomniacs/da2/DA2Activity$17;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Lcom/android/util/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
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
    .line 2659
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$17;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/android/util/Purchase;Lcom/android/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/android/util/Purchase;
    .param p2, "result"    # Lcom/android/util/IabResult;

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$17;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$400(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2665
    const-string v0, " Upon consumption completion callback the IAB system was not present to complete the transaction."

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 2686
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    invoke-virtual {p2}, Lcom/android/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2681
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$17;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while consuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    goto :goto_0
.end method
