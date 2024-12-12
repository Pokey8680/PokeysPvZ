.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field volatile oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3471
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V

    .line 3472
    return-void
.end method

.method public constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3474
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "oldValue":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3467
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;->create()Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    .line 3468
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->createUnstarted()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    .line 3475
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    .line 3476
    return-void
.end method

.method private fullyFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3502
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3574
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public elapsedNanos()J
    .locals 2

    .prologue
    .line 3549
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3559
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3568
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3563
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 3490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 3485
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 3480
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3520
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<-TK;TV;>;"
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/base/Stopwatch;->start()Lorg/roboguice/shaded/goole/common/base/Stopwatch;

    .line 3521
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    invoke-interface {v4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 3523
    .local v2, "previousValue":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    .line 3524
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3525
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    .line 3544
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v4

    .line 3525
    .restart local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v4

    goto :goto_0

    .line 3527
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {p2, p1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3528
    .local v0, "newValue":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<TV;>;"
    if-nez v0, :cond_2

    .line 3529
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v4

    goto :goto_0

    .line 3533
    :cond_2
    new-instance v4, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference$1;

    invoke-direct {v4, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference$1;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;)V

    invoke-static {v0, v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 3540
    .end local v0    # "newValue":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<TV;>;"
    :catch_0
    move-exception v3

    .line 3541
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_3

    .line 3542
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 3544
    :cond_3
    invoke-virtual {p0, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->fullyFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v4

    goto :goto_0
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3507
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 3510
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    .line 3517
    :goto_0
    return-void

    .line 3513
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->unset()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->oldValue:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3494
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 3498
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 3554
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LoadingValueReference;->futureValue:Lorg/roboguice/shaded/goole/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
