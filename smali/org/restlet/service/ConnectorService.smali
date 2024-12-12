.class public Lorg/restlet/service/ConnectorService;
.super Lorg/restlet/service/Service;
.source "ConnectorService.java"


# instance fields
.field private final clientProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final serverProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/restlet/service/Service;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/service/ConnectorService;->clientProtocols:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/service/ConnectorService;->serverProtocols:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public afterSend(Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 83
    return-void
.end method

.method public beforeSend(Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 95
    return-void
.end method

.method public getClientProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/restlet/service/ConnectorService;->clientProtocols:Ljava/util/List;

    return-object v0
.end method

.method public getServerProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/restlet/service/ConnectorService;->serverProtocols:Ljava/util/List;

    return-object v0
.end method

.method public setClientProtocols(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "clientProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_0
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setServerProtocols(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "serverProtocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getServerProtocols()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getServerProtocols()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getServerProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/restlet/service/ConnectorService;->getServerProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
