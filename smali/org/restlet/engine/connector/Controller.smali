.class public abstract Lorg/restlet/engine/connector/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field protected final helper:Lorg/restlet/engine/connector/ConnectionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<*>;"
        }
    .end annotation
.end field

.field protected overloaded:Z

.field protected running:Z


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/ConnectionHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "helper":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<*>;"
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/restlet/engine/connector/Controller;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    .line 64
    iput-boolean v0, p0, Lorg/restlet/engine/connector/Controller;->overloaded:Z

    .line 65
    iput-boolean v0, p0, Lorg/restlet/engine/connector/Controller;->running:Z

    .line 66
    return-void
.end method

.method private setRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lorg/restlet/engine/connector/Controller;->running:Z

    .line 194
    return-void
.end method


# virtual methods
.method protected doInit()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected doRelease()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected doRun(J)V
    .locals 1
    .param p1, "sleepTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->control()Z

    .line 89
    return-void
.end method

.method protected getHelper()Lorg/restlet/engine/connector/ConnectionHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/restlet/engine/connector/Controller;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    return-object v0
.end method

.method protected getWorkerService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public isOverloaded()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/restlet/engine/connector/Controller;->overloaded:Z

    return v0
.end method

.method protected isRunning()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/restlet/engine/connector/Controller;->running:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->doInit()V

    .line 133
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/restlet/engine/connector/Controller;->setRunning(Z)V

    .line 134
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->getControllerSleepTimeMs()I

    move-result v6

    int-to-long v4, v6

    .line 135
    .local v4, "sleepTime":J
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->hasWorkerThreads()Z

    move-result v2

    .line 138
    .local v2, "hasWorkerThreads":Z
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->isRunning()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    if-eqz v2, :cond_0

    .line 141
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->isWorkerServiceOverloaded()Z

    move-result v3

    .line 144
    .local v3, "isWorkerServiceOverloaded":Z
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->isOverloaded()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 145
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/restlet/engine/connector/Controller;->setOverloaded(Z)V

    .line 146
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    const-string v7, "Connector overload ended. Accepting new work again"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->traceWorkerService()V

    .line 159
    .end local v3    # "isWorkerServiceOverloaded":Z
    :cond_0
    :goto_1
    invoke-virtual {p0, v4, v5}, Lorg/restlet/engine/connector/Controller;->doRun(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v6, p0, Lorg/restlet/engine/connector/Controller;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Unexpected error while controlling connector"

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "hasWorkerThreads":Z
    .end local v4    # "sleepTime":J
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v6, p0, Lorg/restlet/engine/connector/Controller;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Unexpected error while controlling connector"

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->doRelease()V

    .line 174
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 150
    .restart local v2    # "hasWorkerThreads":Z
    .restart local v3    # "isWorkerServiceOverloaded":Z
    .restart local v4    # "sleepTime":J
    :cond_1
    if-eqz v3, :cond_0

    .line 151
    const/4 v6, 0x1

    :try_start_4
    invoke-virtual {p0, v6}, Lorg/restlet/engine/connector/Controller;->setOverloaded(Z)V

    .line 152
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    const-string v7, "Connector overload detected. Stop accepting new work"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ConnectionHelper;->traceWorkerService()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 171
    .end local v2    # "hasWorkerThreads":Z
    .end local v3    # "isWorkerServiceOverloaded":Z
    .end local v4    # "sleepTime":J
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->doRelease()V

    throw v6

    .restart local v2    # "hasWorkerThreads":Z
    .restart local v4    # "sleepTime":J
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Controller;->doRelease()V

    goto :goto_2
.end method

.method public setOverloaded(Z)V
    .locals 0
    .param p1, "overloaded"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lorg/restlet/engine/connector/Controller;->overloaded:Z

    .line 184
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/engine/connector/Controller;->setRunning(Z)V

    .line 201
    return-void
.end method
