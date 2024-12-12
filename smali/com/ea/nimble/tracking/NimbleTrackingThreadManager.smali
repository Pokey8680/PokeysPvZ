.class Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadManager.java"


# static fields
.field private static s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

.field private static s_instanceRefs:I


# instance fields
.field private m_executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;I)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    return-void
.end method

.method static acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;-><init>()V

    sput-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    .line 25
    :cond_0
    sget v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    .line 26
    sget-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    return-object v0
.end method

.method static releaseInstance()V
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    .line 32
    sget v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->shutdown()V

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    .line 37
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 133
    return-void
.end method


# virtual methods
.method createTimer(DLjava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .param p1, "timePeriod"    # D
    .param p3, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, p1

    double-to-long v2, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method runInWorkerThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method runInWorkerThread(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "block"    # Z
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 115
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    return-void

    .line 119
    .restart local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 118
    .restart local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_1
    move-exception v2

    goto :goto_0
.end method
