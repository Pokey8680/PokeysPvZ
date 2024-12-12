.class final Lcom/millennialmedia/android/AdCacheThreadPool;
.super Ljava/lang/Object;
.source "AdCacheThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
    }
.end annotation


# static fields
.field private static sharedThreadPool:Lcom/millennialmedia/android/AdCacheThreadPool;


# instance fields
.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private queue:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x20

    invoke-direct {v7, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v7, p0, Lcom/millennialmedia/android/AdCacheThreadPool;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    return-void
.end method

.method static declared-synchronized sharedThreadPool()Lcom/millennialmedia/android/AdCacheThreadPool;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/millennialmedia/android/AdCacheThreadPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/AdCacheThreadPool;->sharedThreadPool:Lcom/millennialmedia/android/AdCacheThreadPool;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/millennialmedia/android/AdCacheThreadPool;

    invoke-direct {v0}, Lcom/millennialmedia/android/AdCacheThreadPool;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCacheThreadPool;->sharedThreadPool:Lcom/millennialmedia/android/AdCacheThreadPool;

    .line 30
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCacheThreadPool;->sharedThreadPool:Lcom/millennialmedia/android/AdCacheThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adName"    # Ljava/lang/String;
    .param p3, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p4, "listener"    # Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    .prologue
    .line 38
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 40
    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;-><init>(Lcom/millennialmedia/android/AdCacheThreadPool;Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V

    .line 41
    .local v0, "task":Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p3, p1}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v1, 0x1

    .line 49
    .end local v0    # "task":Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
