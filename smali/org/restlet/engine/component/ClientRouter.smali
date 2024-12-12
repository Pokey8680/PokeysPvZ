.class public Lorg/restlet/engine/component/ClientRouter;
.super Lorg/restlet/routing/Router;
.source "ClientRouter.java"


# instance fields
.field private volatile component:Lorg/restlet/Component;


# direct methods
.method public constructor <init>(Lorg/restlet/Component;)V
    .locals 1
    .param p1, "component"    # Lorg/restlet/Component;

    .prologue
    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/restlet/routing/Router;-><init>(Lorg/restlet/Context;)V

    .line 68
    iput-object p1, p0, Lorg/restlet/engine/component/ClientRouter;->component:Lorg/restlet/Component;

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private getComponent()Lorg/restlet/Component;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/restlet/engine/component/ClientRouter;->component:Lorg/restlet/Component;

    return-object v0
.end method


# virtual methods
.method public getNext(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/Restlet;
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lorg/restlet/routing/Router;->getNext(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/Restlet;

    move-result-object v0

    .line 90
    .local v0, "result":Lorg/restlet/Restlet;
    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRouter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The protocol used by this request is not declared in the list of client connectors. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 97
    :cond_0
    return-object v0
.end method

.method protected logRoute(Lorg/restlet/routing/Route;)V
    .locals 4
    .param p1, "route"    # Lorg/restlet/routing/Route;

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRouter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    instance-of v1, p1, Lorg/restlet/engine/component/ClientRoute;

    if-eqz v1, :cond_1

    .line 75
    check-cast p1, Lorg/restlet/engine/component/ClientRoute;

    .end local p1    # "route":Lorg/restlet/routing/Route;
    invoke-virtual {p1}, Lorg/restlet/engine/component/ClientRoute;->getClient()Lorg/restlet/Client;

    move-result-object v0

    .line 77
    .local v0, "client":Lorg/restlet/Client;
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRouter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This client was selected: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 84
    .end local v0    # "client":Lorg/restlet/Client;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local p1    # "route":Lorg/restlet/routing/Route;
    :cond_1
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->logRoute(Lorg/restlet/routing/Route;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/restlet/engine/component/ClientRouter;->getComponent()Lorg/restlet/Component;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/ClientList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Client;

    .line 113
    .local v0, "client":Lorg/restlet/Client;
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRouter;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v2

    new-instance v3, Lorg/restlet/engine/component/ClientRoute;

    invoke-direct {v3, p0, v0}, Lorg/restlet/engine/component/ClientRoute;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/Client;)V

    invoke-virtual {v2, v3}, Lorg/restlet/util/RouteList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "client":Lorg/restlet/Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 116
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/restlet/routing/Router;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return-void
.end method
