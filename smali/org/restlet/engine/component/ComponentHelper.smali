.class public Lorg/restlet/engine/component/ComponentHelper;
.super Lorg/restlet/engine/CompositeHelper;
.source "ComponentHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/CompositeHelper",
        "<",
        "Lorg/restlet/Component;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientRouter:Lorg/restlet/engine/component/ClientRouter;

.field private volatile serverRouter:Lorg/restlet/engine/component/ServerRouter;


# direct methods
.method public constructor <init>(Lorg/restlet/Component;)V
    .locals 2
    .param p1, "component"    # Lorg/restlet/Component;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/restlet/engine/CompositeHelper;-><init>(Lorg/restlet/Restlet;)V

    .line 70
    new-instance v0, Lorg/restlet/engine/component/ComponentContext;

    invoke-direct {v0, p0}, Lorg/restlet/engine/component/ComponentContext;-><init>(Lorg/restlet/engine/component/ComponentHelper;)V

    invoke-virtual {p1, v0}, Lorg/restlet/Component;->setContext(Lorg/restlet/Context;)V

    .line 71
    new-instance v1, Lorg/restlet/engine/component/ClientRouter;

    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Component;

    invoke-direct {v1, v0}, Lorg/restlet/engine/component/ClientRouter;-><init>(Lorg/restlet/Component;)V

    iput-object v1, p0, Lorg/restlet/engine/component/ComponentHelper;->clientRouter:Lorg/restlet/engine/component/ClientRouter;

    .line 72
    new-instance v1, Lorg/restlet/engine/component/ServerRouter;

    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Component;

    invoke-direct {v1, v0}, Lorg/restlet/engine/component/ServerRouter;-><init>(Lorg/restlet/Component;)V

    iput-object v1, p0, Lorg/restlet/engine/component/ComponentHelper;->serverRouter:Lorg/restlet/engine/component/ServerRouter;

    .line 73
    return-void
.end method

.method private checkVirtualHost(Lorg/restlet/routing/VirtualHost;)Z
    .locals 17
    .param p1, "host"    # Lorg/restlet/routing/VirtualHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v9, 0x1

    .line 86
    .local v9, "result":Z
    if-eqz p1, :cond_7

    .line 87
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/routing/VirtualHost;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/util/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/restlet/routing/Route;

    .line 88
    .local v10, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v10}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v8

    .line 90
    .local v8, "next":Lorg/restlet/Restlet;
    instance-of v14, v8, Lorg/restlet/Application;

    if-eqz v14, :cond_0

    move-object v0, v8

    .line 91
    check-cast v0, Lorg/restlet/Application;

    .line 93
    .local v0, "application":Lorg/restlet/Application;
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 94
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 96
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/Protocol;

    .line 98
    .local v3, "clientProtocol":Lorg/restlet/data/Protocol;
    const/4 v2, 0x0

    .line 103
    .local v2, "clientFound":Z
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v14

    check-cast v14, Lorg/restlet/Component;

    invoke-virtual {v14}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/util/ClientList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 105
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/Client;>;"
    :goto_2
    if-nez v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 106
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/Client;

    .line 107
    .local v1, "client":Lorg/restlet/Client;
    invoke-virtual {v1}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .line 111
    .end local v1    # "client":Lorg/restlet/Client;
    :cond_2
    if-nez v2, :cond_1

    .line 112
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to start the application \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v0}, Lorg/restlet/Application;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\". Client connector for protocol "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is missing."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 118
    const/4 v9, 0x0

    goto :goto_1

    .line 123
    .end local v2    # "clientFound":Z
    .end local v3    # "clientProtocol":Lorg/restlet/data/Protocol;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/Client;>;"
    :cond_3
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/service/ConnectorService;->getServerProtocols()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 125
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/service/ConnectorService;->getServerProtocols()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/restlet/data/Protocol;

    .line 127
    .local v13, "serverProtocol":Lorg/restlet/data/Protocol;
    const/4 v12, 0x0

    .line 132
    .local v12, "serverFound":Z
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v14

    check-cast v14, Lorg/restlet/Component;

    invoke-virtual {v14}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/util/ServerList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 134
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/Server;>;"
    :goto_4
    if-nez v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 135
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/restlet/Server;

    .line 136
    .local v11, "server":Lorg/restlet/Server;
    invoke-virtual {v11}, Lorg/restlet/Server;->getProtocols()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_4

    .line 140
    .end local v11    # "server":Lorg/restlet/Server;
    :cond_5
    if-nez v12, :cond_4

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to start the application \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v0}, Lorg/restlet/Application;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\". Server connector for protocol "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is missing."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 147
    const/4 v9, 0x0

    goto :goto_3

    .line 153
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/Server;>;"
    .end local v12    # "serverFound":Z
    .end local v13    # "serverProtocol":Lorg/restlet/data/Protocol;
    :cond_6
    if-eqz v9, :cond_0

    invoke-virtual {v0}, Lorg/restlet/Application;->isStopped()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 154
    invoke-virtual {v0}, Lorg/restlet/Application;->start()V

    goto/16 :goto_0

    .line 160
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v8    # "next":Lorg/restlet/Restlet;
    .end local v10    # "route":Lorg/restlet/routing/Route;
    :cond_7
    return v9
.end method

.method private stopHostApplications(Lorg/restlet/routing/VirtualHost;)V
    .locals 3
    .param p1, "host"    # Lorg/restlet/routing/VirtualHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p1}, Lorg/restlet/routing/VirtualHost;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/Route;

    .line 256
    .local v1, "route":Lorg/restlet/routing/Route;
    invoke-virtual {v1}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Restlet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v1}, Lorg/restlet/routing/Route;->getNext()Lorg/restlet/Restlet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Restlet;->stop()V

    goto :goto_0

    .line 260
    .end local v1    # "route":Lorg/restlet/routing/Route;
    :cond_1
    return-void
.end method


# virtual methods
.method public getClientRouter()Lorg/restlet/engine/component/ClientRouter;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentHelper;->clientRouter:Lorg/restlet/engine/component/ClientRouter;

    return-object v0
.end method

.method public getServerRouter()Lorg/restlet/engine/component/ServerRouter;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentHelper;->serverRouter:Lorg/restlet/engine/component/ServerRouter;

    return-object v0
.end method

.method public setServerRouter(Lorg/restlet/engine/component/ServerRouter;)V
    .locals 0
    .param p1, "serverRouter"    # Lorg/restlet/engine/component/ServerRouter;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/restlet/engine/component/ComponentHelper;->serverRouter:Lorg/restlet/engine/component/ServerRouter;

    .line 189
    return-void
.end method

.method public declared-synchronized start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v5

    check-cast v5, Lorg/restlet/Component;

    invoke-virtual {v5}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/restlet/engine/component/ComponentHelper;->checkVirtualHost(Lorg/restlet/routing/VirtualHost;)Z

    move-result v4

    .line 196
    .local v4, "success":Z
    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v5

    check-cast v5, Lorg/restlet/Component;

    invoke-virtual {v5}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/routing/VirtualHost;

    .line 198
    .local v1, "host":Lorg/restlet/routing/VirtualHost;
    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lorg/restlet/engine/component/ComponentHelper;->checkVirtualHost(Lorg/restlet/routing/VirtualHost;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 203
    .end local v1    # "host":Lorg/restlet/routing/VirtualHost;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v4, :cond_2

    .line 204
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v5

    check-cast v5, Lorg/restlet/Component;

    invoke-virtual {v5}, Lorg/restlet/Component;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_2
    monitor-exit p0

    return-void

    .line 206
    :cond_2
    const/4 v0, 0x0

    .line 208
    .local v0, "filter":Lorg/restlet/routing/Filter;
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v5

    check-cast v5, Lorg/restlet/Component;

    invoke-virtual {v5}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/util/ServiceList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/service/Service;

    .line 209
    .local v3, "service":Lorg/restlet/service/Service;
    invoke-virtual {v3}, Lorg/restlet/service/Service;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getContext()Lorg/restlet/Context;

    move-result-object v5

    if-nez v5, :cond_5

    move-object v5, v6

    :goto_4
    invoke-virtual {v3, v5}, Lorg/restlet/service/Service;->createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/ComponentHelper;->addInboundFilter(Lorg/restlet/routing/Filter;)V

    .line 220
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getContext()Lorg/restlet/Context;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v6

    :goto_5
    invoke-virtual {v3, v5}, Lorg/restlet/service/Service;->createOutboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/ComponentHelper;->addOutboundFilter(Lorg/restlet/routing/Filter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 194
    .end local v0    # "filter":Lorg/restlet/routing/Filter;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "service":Lorg/restlet/service/Service;
    .end local v4    # "success":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 211
    .restart local v0    # "filter":Lorg/restlet/routing/Filter;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "service":Lorg/restlet/service/Service;
    .restart local v4    # "success":Z
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v5

    goto :goto_4

    .line 220
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v5

    goto :goto_5

    .line 231
    .end local v3    # "service":Lorg/restlet/service/Service;
    :cond_7
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getServerRouter()Lorg/restlet/engine/component/ServerRouter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/restlet/engine/component/ComponentHelper;->setInboundNext(Lorg/restlet/Restlet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getServerRouter()Lorg/restlet/engine/component/ServerRouter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/component/ServerRouter;->stop()V

    .line 241
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v2

    check-cast v2, Lorg/restlet/Component;

    invoke-virtual {v2}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/restlet/engine/component/ComponentHelper;->stopHostApplications(Lorg/restlet/routing/VirtualHost;)V

    .line 243
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v2

    check-cast v2, Lorg/restlet/Component;

    invoke-virtual {v2}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/routing/VirtualHost;

    .line 244
    .local v0, "host":Lorg/restlet/routing/VirtualHost;
    invoke-direct {p0, v0}, Lorg/restlet/engine/component/ComponentHelper;->stopHostApplications(Lorg/restlet/routing/VirtualHost;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "host":Lorg/restlet/routing/VirtualHost;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 246
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public update()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getServerRouter()Lorg/restlet/engine/component/ServerRouter;

    move-result-object v0

    .line 273
    .local v0, "oldRouter":Lorg/restlet/engine/component/ServerRouter;
    new-instance v2, Lorg/restlet/engine/component/ServerRouter;

    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    check-cast v1, Lorg/restlet/Component;

    invoke-direct {v2, v1}, Lorg/restlet/engine/component/ServerRouter;-><init>(Lorg/restlet/Component;)V

    invoke-virtual {p0, v2}, Lorg/restlet/engine/component/ComponentHelper;->setServerRouter(Lorg/restlet/engine/component/ServerRouter;)V

    .line 276
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentHelper;->getServerRouter()Lorg/restlet/engine/component/ServerRouter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/component/ComponentHelper;->setInboundNext(Lorg/restlet/Restlet;)V

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lorg/restlet/engine/component/ServerRouter;->stop()V

    .line 282
    :cond_0
    return-void
.end method
