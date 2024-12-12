.class public Lcom/ea/nimble/NetworkImpl;
.super Lcom/ea/nimble/Component;
.source "NetworkImpl.java"

# interfaces
.implements Lcom/ea/nimble/INetwork;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/NetworkImpl$TimerTask;,
        Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;,
        Lcom/ea/nimble/NetworkImpl$DetectionState;
    }
.end annotation


# static fields
.field private static final BACKUP_NETWORK_REACHABILITY_CHECK_URL:Ljava/lang/String; = "http://www.ea.com"

.field private static final DETECTION_TIMEOUT:I = 0x1e

.field private static final MAIN_NETWORK_REACHABILITY_CHECK_URL:Ljava/lang/String; = "http://cdn.skum.eamobile.com"

.field private static final PING_INTERVAL:[I

.field private static final QUICK_DETECTION_TIMEOUT:I = 0x5


# instance fields
.field private final MAX_CONCURRENT_THREADS:I

.field private m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

.field private m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

.field private m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

.field private m_isWifi:Z

.field private m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

.field private m_pingIndex:I

.field private m_queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/NetworkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private m_status:Lcom/ea/nimble/Network$Status;

.field private m_timer:Lcom/ea/nimble/Timer;

.field private m_waitingToExecuteQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ea/nimble/NetworkConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ea/nimble/NetworkImpl;->PING_INTERVAL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0xa
        0x1e
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/ea/nimble/NetworkImpl;->MAX_CONCURRENT_THREADS:I

    .line 72
    const-string v0, "constructor, start task manager and monitor the connectivity"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    .line 74
    sget-object v0, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    .line 75
    iput-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    .line 76
    sget-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->NONE:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 77
    iput v2, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    .line 82
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startWork()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/NetworkImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/NetworkImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/Timer;)Lcom/ea/nimble/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/NetworkImpl;
    .param p1, "x1"    # Lcom/ea/nimble/Timer;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/NetworkImpl;Ljava/lang/String;D)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/NetworkImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # D

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/NetworkImpl;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->onReachabilityVerification(Lcom/ea/nimble/NetworkConnectionHandle;)V

    return-void
.end method

.method private detect(Z)V
    .locals 4
    .param p1, "forceRestart"    # Z

    .prologue
    .line 315
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    if-eqz v1, :cond_1

    .line 319
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    .line 327
    .local v0, "connection":Lcom/ea/nimble/NetworkConnection;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    .line 328
    invoke-virtual {v0}, Lcom/ea/nimble/NetworkConnection;->cancel()V

    .line 332
    .end local v0    # "connection":Lcom/ea/nimble/NetworkConnection;
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopPing()V

    .line 334
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->reachabilityCheck()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v2, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    if-eq v1, v2, :cond_2

    .line 339
    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, v1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    .line 344
    :cond_2
    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 357
    :goto_1
    const-string v1, "http://cdn.skum.eamobile.com"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-direct {p0, v1, v2, v3}, Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v2, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    if-ne v1, v2, :cond_4

    .line 351
    sget-object v1, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, v1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    .line 354
    :cond_4
    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_UNREACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    goto :goto_1
.end method

.method private declared-synchronized onReachabilityVerification(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 8
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v2

    .line 488
    .local v2, "error":Ljava/lang/Exception;
    if-nez v2, :cond_1

    .line 490
    const-string v4, "network verified reachable."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    sget-object v4, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, v4}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    .line 493
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 498
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    if-ne p1, v4, :cond_0

    .line 504
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    .line 506
    const-string v4, "network verified unreachable, ERROR %s for detection state %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    instance-of v4, v2, Lcom/ea/nimble/Error;

    if-eqz v4, :cond_2

    .line 510
    move-object v0, v2

    check-cast v0, Lcom/ea/nimble/Error;

    move-object v3, v0

    .line 511
    .local v3, "nimbleError":Lcom/ea/nimble/Error;
    invoke-virtual {v3}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NimbleError"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    .line 512
    invoke-virtual {v3, v4}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 514
    const-string v4, "Network detection verification connection get cancelled for unknown reason (maybe reasonable for Android)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    .end local v3    # "nimbleError":Lcom/ea/nimble/Error;
    :cond_2
    sget-object v4, Lcom/ea/nimble/NetworkImpl$2;->$SwitchMap$com$ea$nimble$NetworkImpl$DetectionState:[I

    iget-object v5, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    invoke-virtual {v5}, Lcom/ea/nimble/NetworkImpl$DetectionState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 524
    :pswitch_0
    sget-object v4, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_BACKUP:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 525
    const-string v4, "http://www.ea.com"

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-direct {p0, v4, v6, v7}, Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 487
    .end local v2    # "error":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 529
    .restart local v2    # "error":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    sget-object v4, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, v4}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    goto :goto_0

    .line 534
    :pswitch_2
    sget-object v4, Lcom/ea/nimble/NetworkImpl$DetectionState;->PING:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 535
    iget-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v5, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    if-ne v4, v5, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startPing()V

    goto :goto_0

    .line 544
    :cond_3
    sget-object v4, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, v4}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    .line 546
    const/4 v4, 0x0

    iput v4, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    .line 547
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startPing()V

    goto/16 :goto_0

    .line 553
    :pswitch_3
    iget v4, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    .line 554
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startPing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reachabilityCheck()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    iput-boolean v3, p0, Lcom/ea/nimble/NetworkImpl;->m_isWifi:Z

    .line 363
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 364
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v3

    .line 369
    :cond_1
    const-string v5, "connectivity"

    .line 370
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 371
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 377
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 390
    const-string v4, "BaseCore not active yet. Postpone reachability check."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 394
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_4

    .line 396
    :cond_3
    iput-boolean v4, p0, Lcom/ea/nimble/NetworkImpl;->m_isWifi:Z

    :cond_4
    move v3, v4

    .line 399
    goto :goto_0
.end method

.method private registerNetworkListener()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    if-nez v1, :cond_0

    .line 150
    const-string v1, "Register network reachability listener."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v1, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setStatus(Lcom/ea/nimble/Network$Status;)V
    .locals 4
    .param p1, "status"    # Lcom/ea/nimble/Network$Status;

    .prologue
    .line 564
    const-string v0, "Status change %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    if-eq p1, v0, :cond_0

    .line 567
    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    .line 568
    const-string v0, "nimble.notification.networkStatusChanged"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 570
    :cond_0
    return-void
.end method

.method private startPing()V
    .locals 4

    .prologue
    .line 404
    iget v0, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    sget-object v1, Lcom/ea/nimble/NetworkImpl;->PING_INTERVAL:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 406
    sget-object v0, Lcom/ea/nimble/NetworkImpl;->PING_INTERVAL:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    .line 411
    :cond_0
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/NetworkImpl$TimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ea/nimble/NetworkImpl$TimerTask;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    .line 412
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    sget-object v1, Lcom/ea/nimble/NetworkImpl;->PING_INTERVAL:[I

    iget v2, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    aget v1, v1, v2

    int-to-double v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 413
    return-void
.end method

.method private declared-synchronized startWork()V
    .locals 3

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 594
    :cond_0
    monitor-exit p0

    return-void

    .line 578
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V

    .line 579
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->registerNetworkListener()V

    .line 581
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    .line 583
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    const-string v1, "NetworkConnections waiting to execute on new AsyncTaskManager. Executing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    :goto_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/NetworkConnection;

    .line 590
    .local v0, "queuedConnection":Lcom/ea/nimble/NetworkConnection;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing request URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/NetworkConnection;->getRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    .end local v0    # "queuedConnection":Lcom/ea/nimble/NetworkConnection;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private stopPing()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    .line 422
    :cond_0
    return-void
.end method

.method private stopWork()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 598
    monitor-enter p0

    .line 600
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    .line 601
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopPing()V

    .line 602
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->unregisterNetworkListener()V

    .line 603
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-nez v3, :cond_0

    .line 628
    :goto_0
    return-void

    .line 603
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 613
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 614
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 616
    .local v0, "connection":Ljava/lang/Runnable;
    check-cast v0, Lcom/ea/nimble/NetworkConnection;

    .end local v0    # "connection":Ljava/lang/Runnable;
    invoke-virtual {v0}, Lcom/ea/nimble/NetworkConnection;->cancelForAppSuspend()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 620
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catch_0
    move-exception v2

    .line 623
    .local v2, "ie":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 625
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 627
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_2
    iput-object v7, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 618
    .restart local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private unregisterNetworkListener()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    .line 171
    :cond_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const-string v1, "Unable to unregister network reachability listener even it does exists"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private verifyReachability(Ljava/lang/String;D)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # D

    .prologue
    const/4 v4, 0x0

    .line 443
    :try_start_0
    new-instance v1, Lcom/ea/nimble/HttpRequest;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .local v1, "request":Lcom/ea/nimble/HttpRequest;
    iput-wide p2, v1, Lcom/ea/nimble/HttpRequest;->timeout:D

    .line 455
    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v2, v1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 456
    new-instance v2, Lcom/ea/nimble/NetworkConnection;

    invoke-direct {v2, p0, v1}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;)V

    iput-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    .line 457
    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    new-instance v3, Lcom/ea/nimble/NetworkImpl$1;

    invoke-direct {v3, p0}, Lcom/ea/nimble/NetworkImpl$1;-><init>(Lcom/ea/nimble/NetworkImpl;)V

    invoke-virtual {v2, v3}, Lcom/ea/nimble/NetworkConnection;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 466
    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    :cond_0
    const-string v2, "AsyncTaskManager is not ready. Queueing networkconnection until AsyncTaskManager is started."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 473
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 483
    .end local v1    # "request":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "request":Lcom/ea/nimble/HttpRequest;
    :cond_2
    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopWork()V

    .line 143
    const-string v0, "cleanup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public declared-synchronized forceRedetectNetworkStatus()V
    .locals 1

    .prologue
    .line 283
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "com.ea.nimble.network"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "Network"

    return-object v0
.end method

.method public getStatus()Lcom/ea/nimble/Network$Status;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    return-object v0
.end method

.method public isNetworkWifi()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/ea/nimble/NetworkImpl;->m_isWifi:Z

    return v0
.end method

.method declared-synchronized removeConnection(Lcom/ea/nimble/NetworkConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnection;

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    monitor-enter p0

    .line 134
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V

    .line 135
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->registerNetworkListener()V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDeleteRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "completionCallback"    # Lcom/ea/nimble/NetworkConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 210
    .local v0, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->DELETE:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 211
    iput-object p2, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 212
    invoke-virtual {p0, v0, p3}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v1

    return-object v1
.end method

.method public sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "completionCallback"    # Lcom/ea/nimble/NetworkConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 180
    .local v0, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 181
    iput-object p2, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 182
    invoke-virtual {p0, v0, p3}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v1

    return-object v1
.end method

.method public sendPostRequest(Ljava/net/URL;Ljava/util/HashMap;[BLcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "data"    # [B
    .param p4, "completionCallback"    # Lcom/ea/nimble/NetworkConnectionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v1, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 190
    .local v1, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v2, v1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 191
    iput-object p2, v1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 195
    :try_start_0
    iget-object v2, v1, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    invoke-virtual {p0, v1, p4}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v2

    return-object v2

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1
    .param p1, "request"    # Lcom/ea/nimble/HttpRequest;
    .param p2, "completionCallback"    # Lcom/ea/nimble/NetworkConnectionCallback;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 5
    .param p1, "request"    # Lcom/ea/nimble/HttpRequest;
    .param p2, "completionCallback"    # Lcom/ea/nimble/NetworkConnectionCallback;
    .param p3, "otDispatch"    # Lcom/ea/nimble/IOperationalTelemetryDispatch;

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-boolean v1, p1, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    if-eqz v1, :cond_1

    .line 229
    new-instance v0, Lcom/ea/nimble/BackgroundNetworkConnection;

    invoke-direct {v0, p0, p1, p3}, Lcom/ea/nimble/BackgroundNetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    .line 235
    .local v0, "connection":Lcom/ea/nimble/NetworkConnection;
    :goto_0
    invoke-virtual {v0, p2}, Lcom/ea/nimble/NetworkConnection;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 238
    iget-object v1, p1, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    :cond_0
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v3, "Sending request without valid url"

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    .line 277
    :goto_1
    return-object v0

    .line 233
    .end local v0    # "connection":Lcom/ea/nimble/NetworkConnection;
    :cond_1
    new-instance v0, Lcom/ea/nimble/NetworkConnection;

    invoke-direct {v0, p0, p1, p3}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    .restart local v0    # "connection":Lcom/ea/nimble/NetworkConnection;
    goto :goto_0

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v1, v2, :cond_3

    .line 247
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No network connection, network status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    invoke-virtual {v4}, Lcom/ea/nimble/Network$Status;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 251
    :cond_3
    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 258
    :cond_4
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_6

    .line 259
    const-string v1, "AsyncTaskManager shutdown. Queueing networkconnection until AsyncTaskManager is started."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :goto_2
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    if-nez v1, :cond_5

    .line 266
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 261
    :cond_6
    const-string v1, "AsyncTaskManager is not ready. Queueing networkconnection until AsyncTaskManager is started."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 274
    :cond_7
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "setup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startWork()V

    .line 103
    return-void
.end method

.method public suspend()V
    .locals 4

    .prologue
    .line 108
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopPing()V

    .line 113
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->unregisterNetworkListener()V

    .line 115
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/NetworkConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/NetworkConnection;

    .line 120
    .local v0, "connection":Lcom/ea/nimble/NetworkConnection;
    invoke-virtual {v0}, Lcom/ea/nimble/NetworkConnection;->cancelForAppSuspend()V

    goto :goto_0

    .line 122
    .end local v0    # "connection":Lcom/ea/nimble/NetworkConnection;
    .end local v1    # "queue":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/NetworkConnection;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 123
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 122
    .restart local v1    # "queue":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/NetworkConnection;>;"
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 124
    const-string v2, "suspend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method
