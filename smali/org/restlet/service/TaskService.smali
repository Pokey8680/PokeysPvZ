.class public Lorg/restlet/service/TaskService;
.super Lorg/restlet/service/Service;
.source "TaskService.java"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/service/TaskService$RestletThreadFactory;
    }
.end annotation


# instance fields
.field private volatile corePoolSize:I

.field private volatile shutdownAllowed:Z

.field private volatile wrapped:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/restlet/service/TaskService;-><init>(I)V

    .line 236
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "corePoolSize"    # I

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/restlet/service/Service;-><init>()V

    .line 242
    iput p1, p0, Lorg/restlet/service/TaskService;->corePoolSize:I

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/service/TaskService;->shutdownAllowed:Z

    .line 244
    return-void
.end method

.method private getWrapped()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/restlet/service/TaskService;->wrapped:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private setWrapped(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "wrapped"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 585
    iput-object p1, p0, Lorg/restlet/service/TaskService;->wrapped:Ljava/util/concurrent/ScheduledExecutorService;

    .line 586
    return-void
.end method

.method private startIfNeeded()V
    .locals 4

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/restlet/service/TaskService;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/service/TaskService;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to start the task service"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static wrap(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 111
    new-instance v0, Lorg/restlet/service/TaskService$1;

    invoke-direct {v0, p0}, Lorg/restlet/service/TaskService$1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 261
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method protected createExecutorService(I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p1, "corePoolSize"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/restlet/service/TaskService;->createThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected createThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lorg/restlet/service/TaskService$RestletThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/restlet/service/TaskService$RestletThreadFactory;-><init>(Lorg/restlet/service/TaskService$1;)V

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 296
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public getCorePoolSize()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lorg/restlet/service/TaskService;->corePoolSize:I

    return v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p1, "tasks"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 333
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 2
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 362
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .param p1, "tasks"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 385
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 412
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdownAllowed()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lorg/restlet/service/TaskService;->shutdownAllowed:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 488
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 465
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 519
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 520
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 553
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public setCorePoolSize(I)V
    .locals 0
    .param p1, "corePoolSize"    # I

    .prologue
    .line 564
    iput p1, p0, Lorg/restlet/service/TaskService;->corePoolSize:I

    .line 565
    return-void
.end method

.method public setShutdownAllowed(Z)V
    .locals 0
    .param p1, "allowShutdown"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lorg/restlet/service/TaskService;->shutdownAllowed:Z

    .line 576
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lorg/restlet/service/TaskService;->isShutdownAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 596
    :cond_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0}, Lorg/restlet/service/TaskService;->isShutdownAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/service/TaskService;->getCorePoolSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/restlet/service/TaskService;->createExecutorService(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/service/TaskService;->wrap(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/service/TaskService;->setWrapped(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 616
    :cond_1
    invoke-super {p0}, Lorg/restlet/service/Service;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/restlet/service/Service;->stop()V

    .line 637
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :cond_0
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 665
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 679
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->startIfNeeded()V

    .line 653
    invoke-direct {p0}, Lorg/restlet/service/TaskService;->getWrapped()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
