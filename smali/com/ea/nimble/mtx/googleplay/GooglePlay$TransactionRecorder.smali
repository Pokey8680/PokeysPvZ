.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;
.super Landroid/content/BroadcastReceiver;
.source "GooglePlay.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionRecorder"
.end annotation


# instance fields
.field private m_requestRetryDelay:D

.field private m_timer:Lcom/ea/nimble/Timer;

.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 2

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2579
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    .line 2580
    new-instance v0, Lcom/ea/nimble/Timer;

    invoke-direct {v0, p0}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_timer:Lcom/ea/nimble/Timer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p2, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;

    .prologue
    .line 2577
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;)Lcom/ea/nimble/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_timer:Lcom/ea/nimble/Timer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;)D
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    .prologue
    .line 2577
    iget-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;D)D
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;
    .param p1, "x1"    # D

    .prologue
    .line 2577
    iput-wide p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    return-wide p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 2681
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    .line 2682
    invoke-static {p0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2683
    return-void
.end method

.method public onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V
    .locals 5
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 2610
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v1, p3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$2100(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2615
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v1, p1, p2, p3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)Z

    move-result v0

    .line 2616
    .local v0, "getNonceSuccess":Z
    if-eqz v0, :cond_2

    .line 2618
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;

    invoke-direct {v2, p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    invoke-static {v1, p1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1700(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V

    goto :goto_0

    .line 2647
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2649
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_timer:Lcom/ea/nimble/Timer;

    iget-wide v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 2664
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v1, "Received network notification"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2665
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v1, "Network status is OK, unregistering receiver and attempting to record transactions"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2668
    invoke-static {p0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2670
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->recordTransactions()V

    .line 2676
    :goto_0
    return-void

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v1, "Attempted to recordTransaction but network state was not OK. Aborting and eating my transaction."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public recordTransactions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2584
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2586
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v2, "No transactions to record"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2605
    :cond_1
    :goto_0
    return-void

    .line 2589
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v2, "Attempting to record transactions"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2590
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2592
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v2, "Main application not running, ignoring record"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2595
    :cond_3
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v1, v2, :cond_4

    .line 2597
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    const-string v2, "Waiting for Network connectivity"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2598
    const-string v1, "nimble.notification.networkStatusChanged"

    invoke-static {v1, p0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 2601
    :cond_4
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 2603
    .local v0, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v2, v0, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$1800(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V

    goto :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 2657
    iget-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->m_requestRetryDelay:D

    .line 2658
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->recordTransactions()V

    .line 2659
    return-void
.end method
