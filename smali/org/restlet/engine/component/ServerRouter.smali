.class public Lorg/restlet/engine/component/ServerRouter;
.super Lorg/restlet/routing/Router;
.source "ServerRouter.java"


# instance fields
.field private volatile component:Lorg/restlet/Component;


# direct methods
.method public constructor <init>(Lorg/restlet/Component;)V
    .locals 1
    .param p1, "component"    # Lorg/restlet/Component;

    .prologue
    .line 69
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/restlet/routing/Router;-><init>(Lorg/restlet/Context;)V

    .line 71
    iput-object p1, p0, Lorg/restlet/engine/component/ServerRouter;->component:Lorg/restlet/Component;

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/ServerRouter;->setRoutingMode(I)V

    .line 73
    return-void

    .line 69
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
    .line 81
    iget-object v0, p0, Lorg/restlet/engine/component/ServerRouter;->component:Lorg/restlet/Component;

    return-object v0
.end method


# virtual methods
.method protected logRoute(Lorg/restlet/routing/Route;)V
    .locals 4
    .param p1, "route"    # Lorg/restlet/routing/Route;

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/restlet/engine/component/ServerRouter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    instance-of v1, p1, Lorg/restlet/engine/component/HostRoute;

    if-eqz v1, :cond_2

    .line 88
    check-cast p1, Lorg/restlet/engine/component/HostRoute;

    .end local p1    # "route":Lorg/restlet/routing/Route;
    invoke-virtual {p1}, Lorg/restlet/engine/component/HostRoute;->getVirtualHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v0

    .line 90
    .local v0, "vhost":Lorg/restlet/routing/VirtualHost;
    invoke-direct {p0}, Lorg/restlet/engine/component/ServerRouter;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lorg/restlet/engine/component/ServerRouter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Default virtual host selected"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 102
    .end local v0    # "vhost":Lorg/restlet/routing/VirtualHost;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v0    # "vhost":Lorg/restlet/routing/VirtualHost;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/component/ServerRouter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual host selected: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/routing/VirtualHost;->getHostScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/routing/VirtualHost;->getHostDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/routing/VirtualHost;->getHostPort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v0    # "vhost":Lorg/restlet/routing/VirtualHost;
    .restart local p1    # "route":Lorg/restlet/routing/Route;
    :cond_2
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->logRoute(Lorg/restlet/routing/Route;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/restlet/engine/component/ServerRouter;->getComponent()Lorg/restlet/Component;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/routing/VirtualHost;

    .line 109
    .local v0, "host":Lorg/restlet/routing/VirtualHost;
    invoke-virtual {p0}, Lorg/restlet/engine/component/ServerRouter;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v3

    new-instance v4, Lorg/restlet/engine/component/HostRoute;

    invoke-direct {v4, p0, v0}, Lorg/restlet/engine/component/HostRoute;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/routing/VirtualHost;)V

    invoke-virtual {v3, v4}, Lorg/restlet/util/RouteList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    .end local v0    # "host":Lorg/restlet/routing/VirtualHost;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 113
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/restlet/engine/component/ServerRouter;->getComponent()Lorg/restlet/Component;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lorg/restlet/engine/component/ServerRouter;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v3

    new-instance v4, Lorg/restlet/engine/component/HostRoute;

    invoke-direct {p0}, Lorg/restlet/engine/component/ServerRouter;->getComponent()Lorg/restlet/Component;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/restlet/engine/component/HostRoute;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/routing/VirtualHost;)V

    invoke-virtual {v3, v4}, Lorg/restlet/util/RouteList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    new-instance v2, Lorg/restlet/engine/component/ServerRouter$1;

    invoke-direct {p0}, Lorg/restlet/engine/component/ServerRouter;->getComponent()Lorg/restlet/Component;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/restlet/engine/component/ServerRouter$1;-><init>(Lorg/restlet/engine/component/ServerRouter;Lorg/restlet/Context;)V

    .line 128
    .local v2, "noHostMatched":Lorg/restlet/Restlet;
    new-instance v3, Lorg/restlet/routing/TemplateRoute;

    const-string v4, ""

    invoke-direct {v3, p0, v4, v2}, Lorg/restlet/routing/TemplateRoute;-><init>(Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V

    invoke-virtual {p0, v3}, Lorg/restlet/engine/component/ServerRouter;->setDefaultRoute(Lorg/restlet/routing/Route;)V

    .line 132
    invoke-super {p0}, Lorg/restlet/routing/Router;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/component/ServerRouter;->getRoutes()Lorg/restlet/util/RouteList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/RouteList;->clear()V

    .line 138
    invoke-super {p0}, Lorg/restlet/routing/Router;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
