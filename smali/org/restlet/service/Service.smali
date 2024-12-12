.class public abstract Lorg/restlet/service/Service;
.super Ljava/lang/Object;
.source "Service.java"


# instance fields
.field private volatile context:Lorg/restlet/Context;

.field private volatile enabled:Z

.field private volatile started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/service/Service;->context:Lorg/restlet/Context;

    .line 74
    iput-boolean p1, p0, Lorg/restlet/service/Service;->enabled:Z

    .line 75
    return-void
.end method


# virtual methods
.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public createOutboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/restlet/service/Service;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/restlet/service/Service;->enabled:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/restlet/service/Service;->started:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/restlet/service/Service;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/restlet/service/Service;->context:Lorg/restlet/Context;

    .line 146
    return-void
.end method

.method public declared-synchronized setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/restlet/service/Service;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/service/Service;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/service/Service;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 160
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
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/service/Service;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/service/Service;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
