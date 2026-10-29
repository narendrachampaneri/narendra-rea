.class Lcom/mopub/mraid/MraidController$7;
.super Ljava/lang/Object;
.source "MraidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mraid/MraidController;

.field final synthetic val$currentWebView:Landroid/view/View;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mraid/MraidController;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 519
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$600(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 520
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v5}, Lcom/mopub/mraid/MraidScreenMetrics;->setScreenSize(II)V

    .line 523
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 524
    .local v1, "location":[I
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$1200(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 525
    .local v2, "rootView":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 526
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v3

    aget v4, v1, v8

    aget v5, v1, v9

    .line 527
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 528
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 526
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mopub/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)V

    .line 530
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 531
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v3

    aget v4, v1, v8

    aget v5, v1, v9

    iget-object v6, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    .line 532
    invoke-static {v6}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    .line 533
    invoke-static {v7}, Lcom/mopub/mraid/MraidController;->access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 531
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mopub/mraid/MraidScreenMetrics;->setDefaultAdPosition(IIII)V

    .line 535
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 536
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v3

    aget v4, v1, v8

    aget v5, v1, v9

    iget-object v6, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    .line 537
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mopub/mraid/MraidController$7;->val$currentWebView:Landroid/view/View;

    .line 538
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 536
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mopub/mraid/MraidScreenMetrics;->setCurrentAdPosition(IIII)V

    .line 541
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v4}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 542
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v3}, Lcom/mopub/mraid/MraidController;->access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$7;->this$0:Lcom/mopub/mraid/MraidController;

    invoke-static {v4}, Lcom/mopub/mraid/MraidController;->access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V

    .line 546
    :cond_0
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/mopub/mraid/MraidController$7;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 549
    :cond_1
    return-void
.end method
