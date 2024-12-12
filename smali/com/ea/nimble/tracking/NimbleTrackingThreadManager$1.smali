.class Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$1;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "NimbleTrackingThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
    .param p2, "x0"    # I

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    invoke-direct {p0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 46
    if-nez p2, :cond_0

    instance-of v3, p1, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 48
    check-cast v1, Ljava/util/concurrent/Future;

    .line 49
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 67
    instance-of v3, p2, Ljava/lang/Error;

    if-eqz v3, :cond_1

    .line 69
    check-cast p2, Ljava/lang/Error;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 55
    .restart local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local p2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 62
    goto :goto_0

    .line 59
    .end local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 61
    .local v2, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 71
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    instance-of v3, p2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2

    .line 73
    check-cast p2, Ljava/lang/RuntimeException;

    .end local p2    # "t":Ljava/lang/Throwable;
    throw p2

    .line 76
    .restart local p2    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v3, "TrackingThreadManager"

    const-string v4, "Checked exception thrown from Tracking thread:"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_3
    return-void
.end method
