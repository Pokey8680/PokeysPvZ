.class public abstract Lorg/restlet/engine/connector/BaseHelper;
.super Lorg/restlet/engine/ConnectorHelper;
.source "BaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Connector;",
        ">",
        "Lorg/restlet/engine/ConnectorHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final clientSide:Z

.field protected final controller:Lorg/restlet/engine/connector/ConnectionController;

.field private volatile controllerService:Ljava/util/concurrent/ExecutorService;

.field protected final inboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation
.end field

.field protected final outboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation
.end field

.field private volatile workerService:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lorg/restlet/Connector;Z)V
    .locals 1
    .param p2, "clientSide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    .local p1, "connector":Lorg/restlet/Connector;, "TT;"
    invoke-direct {p0, p1}, Lorg/restlet/engine/ConnectorHelper;-><init>(Lorg/restlet/Connector;)V

    .line 214
    iput-boolean p2, p0, Lorg/restlet/engine/connector/BaseHelper;->clientSide:Z

    .line 215
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->inboundMessages:Ljava/util/Queue;

    .line 216
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->outboundMessages:Ljava/util/Queue;

    .line 217
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->createController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->controller:Lorg/restlet/engine/connector/ConnectionController;

    .line 218
    return-void
.end method


# virtual methods
.method protected control()Z
    .locals 4

    .prologue
    .line 226
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    const/4 v1, 0x0

    .line 230
    .local v1, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getInboundMessages()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v2

    .line 232
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getInboundMessages()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/Response;

    invoke-virtual {p0, v3}, Lorg/restlet/engine/connector/BaseHelper;->handleInbound(Lorg/restlet/Response;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getOutboundMessages()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v2

    .line 239
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 240
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getOutboundMessages()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/Response;

    invoke-virtual {p0, v3}, Lorg/restlet/engine/connector/BaseHelper;->handleOutbound(Lorg/restlet/Response;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_1
    return v1
.end method

.method protected abstract createController()Lorg/restlet/engine/connector/ConnectionController;
.end method

.method protected createControllerService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 259
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    new-instance v0, Lorg/restlet/engine/log/LoggingThreadFactory;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->isControllerDaemon()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/log/LoggingThreadFactory;-><init>(Ljava/util/logging/Logger;Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected createRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 269
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    new-instance v0, Lorg/restlet/Request;

    invoke-direct {v0}, Lorg/restlet/Request;-><init>()V

    return-object v0
.end method

.method protected createWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .prologue
    .line 278
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getMaxThreads()I

    move-result v3

    .line 279
    .local v3, "maxThreads":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getMinThreads()I

    move-result v2

    .line 281
    .local v2, "minThreads":I
    const/4 v7, 0x0

    .line 283
    .local v7, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getMaxQueued()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    .end local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 291
    .restart local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getMaxThreadIdleTimeMs()I

    move-result v0

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lorg/restlet/engine/log/LoggingThreadFactory;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Lorg/restlet/engine/log/LoggingThreadFactory;-><init>(Ljava/util/logging/Logger;Z)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 294
    .local v1, "result":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v0, Lorg/restlet/engine/connector/BaseHelper$1;

    invoke-direct {v0, p0}, Lorg/restlet/engine/connector/BaseHelper$1;-><init>(Lorg/restlet/engine/connector/BaseHelper;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 306
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 307
    return-object v1

    .line 285
    .end local v1    # "result":Ljava/util/concurrent/ThreadPoolExecutor;
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getMaxQueued()I

    move-result v0

    if-gez v0, :cond_1

    .line 286
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .end local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .restart local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    goto :goto_0

    .line 288
    :cond_1
    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    .end local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getMaxQueued()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .restart local v7    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    goto :goto_0
.end method

.method protected doFinishStop()V
    .locals 5

    .prologue
    .line 315
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/restlet/engine/connector/BaseHelper;->controllerService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lorg/restlet/engine/connector/BaseHelper;->controller:Lorg/restlet/engine/connector/ConnectionController;

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionController;->shutdown()V

    .line 328
    iget-object v1, p0, Lorg/restlet/engine/connector/BaseHelper;->controllerService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 331
    :try_start_1
    iget-object v1, p0, Lorg/restlet/engine/connector/BaseHelper;->controllerService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :cond_1
    :goto_1
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Interruption while shutting down the worker service"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 332
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 333
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Interruption while shutting down the controller service"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected doGracefulStop()V
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 349
    :cond_0
    return-void
.end method

.method public abstract doHandleInbound(Lorg/restlet/Response;)V
.end method

.method public abstract doHandleOutbound(Lorg/restlet/Response;)V
.end method

.method protected execute(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 376
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionController;->isOverloaded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionController;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to execute a "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->isClientSide()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "client-side"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " controller task"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v1, "server-side"

    goto :goto_1
.end method

.method public getController()Lorg/restlet/engine/connector/ConnectionController;
    .locals 1

    .prologue
    .line 396
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->controller:Lorg/restlet/engine/connector/ConnectionController;

    return-object v0
.end method

.method public getControllerSleepTimeMs()I
    .locals 3

    .prologue
    .line 405
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "controllerSleepTimeMs"

    const-string v2, "60000"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInboundBufferSize()I
    .locals 3

    .prologue
    .line 415
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "inboundBufferSize"

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getInboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->inboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public getLowThreads()I
    .locals 3

    .prologue
    .line 434
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "lowThreads"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxIoIdleTimeMs()I
    .locals 3

    .prologue
    .line 446
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxIoIdleTimeMs"

    const-string v2, "60000"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxQueued()I
    .locals 3

    .prologue
    .line 464
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxQueued"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxThreadIdleTimeMs()I
    .locals 3

    .prologue
    .line 476
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxThreadIdleTimeMs"

    const-string v2, "300000"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxThreads()I
    .locals 3

    .prologue
    .line 486
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxThreads"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinThreads()I
    .locals 3

    .prologue
    .line 497
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "minThreads"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOutboundBufferSize()I
    .locals 3

    .prologue
    .line 507
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "outboundBufferSize"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getOutboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->outboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public getRequest(Lorg/restlet/Response;)Lorg/restlet/Request;
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 528
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    return-object v0
.end method

.method public getThrottleTimeMs()I
    .locals 3

    .prologue
    .line 538
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "throttleTimeMs"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTraceStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 548
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 3

    .prologue
    .line 557
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "transport"

    const-string v2, "TCP"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 566
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->workerService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method protected abstract handleInbound(Lorg/restlet/Response;)V
.end method

.method protected handleInbound(Lorg/restlet/Response;Z)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "synchronous"    # Z

    .prologue
    .line 586
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    if-eqz p1, :cond_1

    .line 587
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->hasWorkerThreads()Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    :cond_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/BaseHelper;->doHandleInbound(Lorg/restlet/Response;)V

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 590
    :cond_2
    new-instance v0, Lorg/restlet/engine/connector/BaseHelper$2;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/connector/BaseHelper$2;-><init>(Lorg/restlet/engine/connector/BaseHelper;Lorg/restlet/Response;)V

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/BaseHelper;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract handleOutbound(Lorg/restlet/Response;)V
.end method

.method protected handleOutbound(Lorg/restlet/Response;Z)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "synchronous"    # Z

    .prologue
    .line 625
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    if-eqz p1, :cond_1

    .line 626
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->hasWorkerThreads()Z

    move-result v0

    if-nez v0, :cond_2

    .line 627
    :cond_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/BaseHelper;->doHandleOutbound(Lorg/restlet/Response;)V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 629
    :cond_2
    new-instance v0, Lorg/restlet/engine/connector/BaseHelper$3;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/connector/BaseHelper$3;-><init>(Lorg/restlet/engine/connector/BaseHelper;Lorg/restlet/Response;)V

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/BaseHelper;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hasWorkerThreads()Z
    .locals 3

    .prologue
    .line 653
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "workerThreads"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isClientSide()Z
    .locals 1

    .prologue
    .line 663
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    iget-boolean v0, p0, Lorg/restlet/engine/connector/BaseHelper;->clientSide:Z

    return v0
.end method

.method public abstract isControllerDaemon()Z
.end method

.method public isDirectBuffers()Z
    .locals 3

    .prologue
    .line 682
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "directBuffers"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServerSide()Z
    .locals 1

    .prologue
    .line 693
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->isClientSide()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTracing()Z
    .locals 3

    .prologue
    .line 702
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "tracing"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isWorkerServiceOverloaded()Z
    .locals 2

    .prologue
    .line 714
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLowThreads()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "message"    # Lorg/restlet/Response;

    .prologue
    .line 727
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    if-eqz p2, :cond_0

    .line 728
    invoke-virtual {p2, p1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 729
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getInboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_0
    return-void
.end method

.method public onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "message"    # Lorg/restlet/Response;

    .prologue
    .line 742
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    if-eqz p2, :cond_1

    .line 743
    invoke-virtual {p2, p1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 744
    invoke-virtual {p0, p2}, Lorg/restlet/engine/connector/BaseHelper;->getRequest(Lorg/restlet/Response;)Lorg/restlet/Request;

    move-result-object v0

    .line 746
    .local v0, "request":Lorg/restlet/Request;
    invoke-virtual {v0}, Lorg/restlet/Request;->getOnError()Lorg/restlet/Uniform;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 747
    invoke-virtual {v0}, Lorg/restlet/Request;->getOnError()Lorg/restlet/Uniform;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 750
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getInboundMessages()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 752
    .end local v0    # "request":Lorg/restlet/Request;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 756
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-super {p0}, Lorg/restlet/engine/ConnectorHelper;->start()V

    .line 757
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->createControllerService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->controllerService:Ljava/util/concurrent/ExecutorService;

    .line 759
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->hasWorkerThreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->createWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->workerService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 763
    :cond_0
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper;->controllerService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lorg/restlet/engine/connector/BaseHelper;->controller:Lorg/restlet/engine/connector/ConnectionController;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 764
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-super {p0}, Lorg/restlet/engine/ConnectorHelper;->stop()V

    .line 769
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->doGracefulStop()V

    .line 770
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->doFinishStop()V

    .line 771
    return-void
.end method

.method public traceWorkerService()V
    .locals 4

    .prologue
    .line 777
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper;, "Lorg/restlet/engine/connector/BaseHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker service state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->isWorkerServiceOverloaded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Overloaded"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker service tasks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queued, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scheduled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 790
    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker service thread pool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimimum size, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maximum size, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current size, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/BaseHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " largest size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 801
    :cond_0
    return-void

    .line 778
    :cond_1
    const-string v0, "Normal"

    goto/16 :goto_0
.end method
