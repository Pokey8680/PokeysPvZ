.class public Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;
.super Ljava/lang/Object;
.source "AdTrackerNetworkInterface.java"


# static fields
.field private static a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Ljava/lang/Thread;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

.field private static i:Z

.field private static j:I

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    sput-boolean v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Z

    .line 43
    sput v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I

    .line 51
    const-string v0, "https://d.appsdt.com/download/tracker/?"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Ljava/lang/String;

    .line 52
    const-string v0, "https://d.appsdt.com/sdkdwnldbeacon.html"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->l:Ljava/lang/String;

    .line 53
    const-string v0, "https://d.appsdt.com/download/tracker/iatsdkconfs?"

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->m:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->n:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lcom/inmobi/commons/analytics/iat/impl/Goal;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getRetryTime()J

    move-result-wide v0

    .line 263
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxWaitTime()I

    move-result v5

    .line 265
    sget-object v6, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    .line 266
    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    move-wide v0, v2

    .line 272
    :cond_0
    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 274
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying goalname: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 278
    monitor-exit v2

    .line 284
    :goto_1
    return-void

    .line 269
    :cond_2
    int-to-long v6, v5

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 270
    int-to-long v0, v5

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to reduce wait time exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)V
    .locals 6

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->isDuplicateGoal()Z

    move-result v1

    .line 289
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalCount()I

    move-result v2

    .line 290
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportUsingWebview(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 299
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v4, "goalPingSuccess"

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->removeGoal(Ljava/lang/String;I)Z

    .line 303
    const-string v0, "download"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->updateStatus()Z

    .line 312
    :cond_0
    :goto_1
    return-void

    .line 297
    :cond_1
    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->reportUsingNetwork(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0, v3, v2, v1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->increaseRetryTime(Ljava/lang/String;IZ)Z

    goto :goto_1
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->l:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->saveGoals()V

    .line 230
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    sput-boolean v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Z

    .line 232
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 235
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    const-string v1, "Network Unavailable"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x1

    sput v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I

    .line 239
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->deinit()V

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Lcom/inmobi/commons/analytics/iat/impl/Goal;)V

    .line 246
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g()V

    .line 248
    invoke-static {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)V

    .line 249
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "waitForReferrer"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    const/4 v0, 0x0

    sput v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to process IAT goals"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object v0
.end method

.method public static deinit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->saveGoals()V

    .line 150
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    .line 152
    return-void
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/commons/internal/CommonsException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->k()V

    return-void
.end method

.method private static g()V
    .locals 6

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    const-string v1, "Getting wait time for referrer"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j()J

    move-result-wide v0

    .line 320
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for referrer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :try_start_1
    sget-object v3, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 325
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->getReferrerFromLogs()Ljava/lang/String;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 332
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving referrer from logs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->setReferrerFromLogs(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 325
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to set referrer"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getGoalList()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    return-object v0
.end method

.method public static getNetworkThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static getWebviewUploadStatus()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static h()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 388
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "timetoLive"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "iat_ids"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 391
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 392
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 394
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 399
    const/16 v4, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 400
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 401
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 409
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    const-string v3, "Error parsing ttl"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static i()Z
    .locals 3

    .prologue
    .line 416
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "referrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->getLoggedGoals()Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->a:Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    .line 128
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->e:Landroid/os/Handler;

    .line 138
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    return-void
.end method

.method public static isMetricSample()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->i:Z

    return v0
.end method

.method public static isSynced()Z
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isUnstableNetwork()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->j:I

    return v0
.end method

.method private static j()J
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 426
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getReferrerWaitTimeRetryCount()I

    move-result v0

    .line 427
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getReferrerWaitTimeRetryInterval()I

    move-result v1

    .line 428
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getReferrerWaitTime()I

    move-result v4

    .line 430
    mul-int v5, v0, v1

    add-int/lit8 v5, v5, 0x0

    mul-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 431
    new-instance v6, Lcom/inmobi/commons/cache/RetryMechanism;

    add-int/lit8 v0, v0, -0x1

    sget-object v7, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->n:Ljava/util/Timer;

    invoke-direct {v6, v0, v1, v7}, Lcom/inmobi/commons/cache/RetryMechanism;-><init>(IILjava/util/Timer;)V

    .line 432
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$b;-><init>()V

    invoke-virtual {v6, v0}, Lcom/inmobi/commons/cache/RetryMechanism;->rescheduleTimer(Lcom/inmobi/commons/cache/RetryMechanism$RetryRunnable;)V

    .line 445
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 447
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v5, "referrerWaitTime"

    invoke-static {v0, v1, v5}, Lcom/inmobi/commons/internal/FileOperations;->getLongPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    .line 449
    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 450
    :try_start_3
    div-int/lit16 v0, v4, 0x3e8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    int-to-long v0, v0

    .line 457
    :cond_0
    :goto_0
    return-wide v0

    .line 447
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 453
    :catch_0
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    .line 455
    :goto_1
    const-string v3, "[InMobi]-[AdTracker]-4.4.3"

    const-string v4, "Failed to get wait time"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 453
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static k()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/commons/internal/CommonsException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch Wait time URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x0

    .line 467
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 472
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 474
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait time received for referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 477
    const-string v0, "referrerWaitTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 478
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "referrerWaitTime"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    :goto_1
    return-void

    .line 468
    :catch_0
    move-exception v1

    .line 469
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    const-string v3, "Error fetching wait time for referrer"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 482
    :catch_1
    move-exception v0

    .line 484
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Error fetching wait time for referrer"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 487
    :cond_0
    new-instance v0, Lcom/inmobi/commons/internal/CommonsException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/CommonsException;-><init>(I)V

    throw v0
.end method

.method private static l()Z
    .locals 3

    .prologue
    .line 492
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v2, "waitForReferrer"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static notifyThread()V
    .locals 3

    .prologue
    .line 497
    :try_start_0
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 499
    monitor-exit v1

    .line 505
    :goto_0
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    :catch_0
    move-exception v0

    .line 503
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to notify thread"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized reportToServer(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
    .locals 4

    .prologue
    .line 155
    const-class v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;

    invoke-direct {v2, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    .line 184
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 185
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static reportUsingNetwork(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v1

    .line 195
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "IMAdTrackerStatusUpload"

    const-string v3, "iat_ids"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    .line 197
    invoke-static {p0, p1, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerRequestResponseBuilder;->sendHTTPRequest(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    move-result-object v0

    .line 200
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->APP_ANALYTICS_UPLOAD_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    if-ne v2, v0, :cond_0

    .line 202
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully uploaded goal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 206
    :cond_0
    :try_start_1
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;->RELOAD_WEBVIEW_ERROR:Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants$StatusCode;

    if-ne v2, v0, :cond_1

    .line 208
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 221
    const-string v2, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to upload goal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to report goal: "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    :cond_1
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload goal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected static reportUsingWebview(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 348
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getWebviewTimeout()I

    move-result v0

    .line 349
    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-direct {v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;-><init>()V

    sput-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    .line 350
    invoke-static {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerRequestResponseBuilder;->saveWebviewRequestParam(Ljava/lang/String;Lcom/inmobi/commons/analytics/iat/impl/Goal;)V

    .line 351
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-virtual {v1, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->loadWebview(Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z

    .line 353
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :try_start_1
    sget-object v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 355
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->isWebviewLoading()Z

    move-result v1

    .line 358
    if-ne v3, v1, :cond_0

    .line 360
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x198

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    .line 362
    :cond_0
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 363
    if-nez v1, :cond_1

    .line 364
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload goal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->h:Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->deinit(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 378
    :goto_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 355
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 373
    :catch_0
    move-exception v0

    .line 375
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 376
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to load webview Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 369
    :cond_1
    :try_start_5
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 370
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploaded goal successfully: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/analytics/iat/impl/Goal;->getGoalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public static setSynced(Z)V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    return-void
.end method

.method public static setWebviewUploadStatus(Z)V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    return-void
.end method

.method public static waitThread(I)V
    .locals 4

    .prologue
    .line 509
    :try_start_0
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->d:Ljava/lang/Thread;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 511
    monitor-exit v1

    .line 517
    :goto_0
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 513
    :catch_0
    move-exception v0

    .line 515
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to notify thread"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
