.class public Lorg/restlet/Component;
.super Lorg/restlet/Restlet;
.source "Component.java"


# instance fields
.field private final clients:Lorg/restlet/util/ClientList;

.field private volatile defaultHost:Lorg/restlet/routing/VirtualHost;

.field private volatile helper:Lorg/restlet/engine/component/ComponentHelper;

.field private final hosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/VirtualHost;",
            ">;"
        }
    .end annotation
.end field

.field private volatile internalRouter:Lorg/restlet/routing/Router;

.field private final realms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Realm;",
            ">;"
        }
    .end annotation
.end field

.field private final servers:Lorg/restlet/util/ServerList;

.field private final services:Lorg/restlet/util/ServiceList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lorg/restlet/Restlet;-><init>()V

    .line 181
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/restlet/Component;->hosts:Ljava/util/List;

    .line 182
    new-instance v1, Lorg/restlet/util/ClientList;

    invoke-direct {v1, v2}, Lorg/restlet/util/ClientList;-><init>(Lorg/restlet/Context;)V

    iput-object v1, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

    .line 183
    new-instance v1, Lorg/restlet/util/ServerList;

    invoke-direct {v1, v2, p0}, Lorg/restlet/util/ServerList;-><init>(Lorg/restlet/Context;Lorg/restlet/Restlet;)V

    iput-object v1, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    .line 184
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/restlet/Component;->realms:Ljava/util/List;

    .line 185
    new-instance v1, Lorg/restlet/util/ServiceList;

    invoke-virtual {p0}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/util/ServiceList;-><init>(Lorg/restlet/Context;)V

    iput-object v1, p0, Lorg/restlet/Component;->services:Lorg/restlet/util/ServiceList;

    .line 187
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    new-instance v1, Lorg/restlet/engine/component/ComponentHelper;

    invoke-direct {v1, p0}, Lorg/restlet/engine/component/ComponentHelper;-><init>(Lorg/restlet/Component;)V

    iput-object v1, p0, Lorg/restlet/Component;->helper:Lorg/restlet/engine/component/ComponentHelper;

    .line 189
    invoke-virtual {p0}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    .line 190
    .local v0, "childContext":Lorg/restlet/Context;
    new-instance v1, Lorg/restlet/routing/VirtualHost;

    invoke-direct {v1, v0}, Lorg/restlet/routing/VirtualHost;-><init>(Lorg/restlet/Context;)V

    iput-object v1, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    .line 191
    new-instance v1, Lorg/restlet/engine/component/InternalRouter;

    invoke-direct {v1, v0}, Lorg/restlet/engine/component/InternalRouter;-><init>(Lorg/restlet/Context;)V

    iput-object v1, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    .line 192
    iget-object v1, p0, Lorg/restlet/Component;->services:Lorg/restlet/util/ServiceList;

    new-instance v2, Lorg/restlet/service/LogService;

    invoke-direct {v2}, Lorg/restlet/service/LogService;-><init>()V

    invoke-virtual {v1, v2}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 193
    invoke-virtual {p0}, Lorg/restlet/Component;->getLogService()Lorg/restlet/service/LogService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/service/LogService;->setContext(Lorg/restlet/Context;)V

    .line 194
    iget-object v1, p0, Lorg/restlet/Component;->services:Lorg/restlet/util/ServiceList;

    new-instance v2, Lorg/restlet/service/StatusService;

    invoke-direct {v2}, Lorg/restlet/service/StatusService;-><init>()V

    invoke-virtual {v1, v2}, Lorg/restlet/util/ServiceList;->add(Lorg/restlet/service/Service;)Z

    .line 195
    invoke-virtual {p0}, Lorg/restlet/Component;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/service/StatusService;->setContext(Lorg/restlet/Context;)V

    .line 196
    iget-object v1, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

    invoke-virtual {v1, v0}, Lorg/restlet/util/ClientList;->setContext(Lorg/restlet/Context;)V

    .line 197
    iget-object v1, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    invoke-virtual {v1, v0}, Lorg/restlet/util/ServerList;->setContext(Lorg/restlet/Context;)V

    .line 199
    .end local v0    # "childContext":Lorg/restlet/Context;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "xmlConfigurationRef"    # Ljava/lang/String;

    .prologue
    .line 252
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/restlet/Component;-><init>(Lorg/restlet/data/Reference;)V

    .line 254
    return-void

    .line 252
    :cond_0
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;)V
    .locals 6
    .param p1, "xmlConfigRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 208
    invoke-direct {p0}, Lorg/restlet/Component;-><init>()V

    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, "xmlConfigRepresentation":Lorg/restlet/representation/Representation;
    if-eqz p1, :cond_0

    .line 214
    new-instance v0, Lorg/restlet/resource/ClientResource;

    invoke-direct {v0, p1}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/data/Reference;)V

    .line 215
    .local v0, "cr":Lorg/restlet/resource/ClientResource;
    invoke-virtual {v0}, Lorg/restlet/resource/ClientResource;->get()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1

    .line 218
    new-instance v2, Lorg/restlet/engine/component/ComponentXmlParser;

    invoke-direct {v2, p0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;-><init>(Lorg/restlet/Component;Lorg/restlet/representation/Representation;)V

    invoke-virtual {v2}, Lorg/restlet/engine/component/ComponentXmlParser;->parse()V

    .line 226
    .end local v0    # "cr":Lorg/restlet/resource/ClientResource;
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v0    # "cr":Lorg/restlet/resource/ClientResource;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Component;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get the Component XML configuration located at this URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 3
    .param p1, "xmlConfigRepresentation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 235
    invoke-direct {p0}, Lorg/restlet/Component;-><init>()V

    .line 237
    if-eqz p1, :cond_0

    .line 238
    new-instance v0, Lorg/restlet/engine/component/ComponentXmlParser;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/component/ComponentXmlParser;-><init>(Lorg/restlet/Component;Lorg/restlet/representation/Representation;)V

    invoke-virtual {v0}, Lorg/restlet/engine/component/ComponentXmlParser;->parse()V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Unable to parse the Component XML configuration."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHelper()Lorg/restlet/engine/component/ComponentHelper;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/restlet/Component;->helper:Lorg/restlet/engine/component/ComponentHelper;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p0, :cond_0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 134
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Can\'t launch the component. Requires the path to an XML configuration file.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 139
    .local v1, "currentDirURI":Ljava/net/URI;
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 140
    .local v0, "confURI":Ljava/net/URI;
    new-instance v3, Lorg/restlet/Component;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/Component;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/restlet/Component;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "confURI":Ljava/net/URI;
    .end local v1    # "currentDirURI":Ljava/net/URI;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Can\'t launch the component.\nAn unexpected exception occurred:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method


# virtual methods
.method public getClients()Lorg/restlet/util/ClientList;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

    return-object v0
.end method

.method public getDefaultHost()Lorg/restlet/routing/VirtualHost;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    return-object v0
.end method

.method public getHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/VirtualHost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/restlet/Component;->hosts:Ljava/util/List;

    return-object v0
.end method

.method public getInternalRouter()Lorg/restlet/routing/Router;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    return-object v0
.end method

.method public getLogService()Lorg/restlet/service/LogService;
    .locals 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/LogService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/LogService;

    return-object v0
.end method

.method public getRealm(Ljava/lang/String;)Lorg/restlet/security/Realm;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    if-eqz p1, :cond_1

    .line 341
    invoke-virtual {p0}, Lorg/restlet/Component;->getRealms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/security/Realm;

    .line 342
    .local v1, "realm":Lorg/restlet/security/Realm;
    invoke-virtual {v1}, Lorg/restlet/security/Realm;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "realm":Lorg/restlet/security/Realm;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRealms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Realm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lorg/restlet/Component;->realms:Ljava/util/List;

    return-object v0
.end method

.method public getServers()Lorg/restlet/util/ServerList;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    return-object v0
.end method

.method public getServices()Lorg/restlet/util/ServiceList;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/restlet/Component;->services:Lorg/restlet/util/ServiceList;

    return-object v0
.end method

.method public getStatusService()Lorg/restlet/service/StatusService;
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    const-class v1, Lorg/restlet/service/StatusService;

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServiceList;->get(Ljava/lang/Class;)Lorg/restlet/service/Service;

    move-result-object v0

    check-cast v0, Lorg/restlet/service/StatusService;

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 389
    invoke-super {p0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 391
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/engine/component/ComponentHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 394
    :cond_0
    return-void
.end method

.method public setClients(Lorg/restlet/util/ClientList;)V
    .locals 2
    .param p1, "clients"    # Lorg/restlet/util/ClientList;

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v1

    monitor-enter v1

    .line 405
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/ClientList;->clear()V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ClientList;->addAll(Ljava/util/Collection;)Z

    .line 412
    :cond_0
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 417
    invoke-super {p0, p1}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 418
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->setContext(Lorg/restlet/Context;)V

    .line 419
    return-void
.end method

.method public setDefaultHost(Lorg/restlet/routing/VirtualHost;)V
    .locals 0
    .param p1, "defaultHost"    # Lorg/restlet/routing/VirtualHost;

    .prologue
    .line 428
    iput-object p1, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    .line 429
    return-void
.end method

.method public setHosts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/routing/VirtualHost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/routing/VirtualHost;>;"
    invoke-virtual {p0}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 445
    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p0}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 449
    :cond_0
    monitor-exit v1

    .line 450
    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInternalRouter(Lorg/restlet/routing/Router;)V
    .locals 0
    .param p1, "internalRouter"    # Lorg/restlet/routing/Router;

    .prologue
    .line 461
    iput-object p1, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    .line 462
    return-void
.end method

.method public setLogService(Lorg/restlet/service/LogService;)V
    .locals 1
    .param p1, "logService"    # Lorg/restlet/service/LogService;

    .prologue
    .line 471
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 472
    return-void
.end method

.method public setRealms(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Realm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "realms":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Realm;>;"
    invoke-virtual {p0}, Lorg/restlet/Component;->getRealms()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 483
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getRealms()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lorg/restlet/Component;->getRealms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 486
    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p0}, Lorg/restlet/Component;->getRealms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    :cond_0
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setServers(Lorg/restlet/util/ServerList;)V
    .locals 2
    .param p1, "servers"    # Lorg/restlet/util/ServerList;

    .prologue
    .line 501
    invoke-virtual {p0}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/ServerList;->clear()V

    .line 505
    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p0}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServerList;->addAll(Ljava/util/Collection;)Z

    .line 509
    :cond_0
    monitor-exit v1

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStatusService(Lorg/restlet/service/StatusService;)V
    .locals 1
    .param p1, "statusService"    # Lorg/restlet/service/StatusService;

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/ServiceList;->set(Lorg/restlet/service/Service;)V

    .line 520
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/restlet/Component;->startClients()V

    .line 538
    invoke-virtual {p0}, Lorg/restlet/Component;->startServers()V

    .line 539
    invoke-virtual {p0}, Lorg/restlet/Component;->startRouters()V

    .line 540
    invoke-virtual {p0}, Lorg/restlet/Component;->startServices()V

    .line 541
    invoke-virtual {p0}, Lorg/restlet/Component;->startRealms()V

    .line 542
    invoke-virtual {p0}, Lorg/restlet/Component;->startHelper()V

    .line 543
    invoke-super {p0}, Lorg/restlet/Restlet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    :cond_0
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized startClients()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

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

    .line 555
    .local v0, "client":Lorg/restlet/Client;
    invoke-virtual {v0}, Lorg/restlet/Client;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 553
    .end local v0    # "client":Lorg/restlet/Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 558
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized startHelper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/component/ComponentHelper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_0
    monitor-exit p0

    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized startRealms()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->realms:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lorg/restlet/Component;->realms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/security/Realm;

    .line 579
    .local v1, "realm":Lorg/restlet/security/Realm;
    invoke-virtual {v1}, Lorg/restlet/security/Realm;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 577
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "realm":Lorg/restlet/security/Realm;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 582
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized startRouters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    invoke-virtual {v2}, Lorg/restlet/routing/Router;->start()V

    .line 594
    :cond_0
    iget-object v2, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    if-eqz v2, :cond_1

    .line 595
    iget-object v2, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    invoke-virtual {v2}, Lorg/restlet/routing/VirtualHost;->start()V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/routing/VirtualHost;

    .line 599
    .local v0, "host":Lorg/restlet/routing/VirtualHost;
    invoke-virtual {v0}, Lorg/restlet/routing/VirtualHost;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    .end local v0    # "host":Lorg/restlet/routing/VirtualHost;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 601
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized startServers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    invoke-virtual {v2}, Lorg/restlet/util/ServerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/Server;

    .line 611
    .local v1, "server":Lorg/restlet/Server;
    invoke-virtual {v1}, Lorg/restlet/Server;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 609
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "server":Lorg/restlet/Server;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 614
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized startServices()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/ServiceList;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    monitor-exit p0

    return-void

    .line 622
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
    .line 640
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/restlet/Restlet;->stop()V

    .line 641
    invoke-virtual {p0}, Lorg/restlet/Component;->stopHelper()V

    .line 642
    invoke-virtual {p0}, Lorg/restlet/Component;->stopRealms()V

    .line 643
    invoke-virtual {p0}, Lorg/restlet/Component;->stopServices()V

    .line 644
    invoke-virtual {p0}, Lorg/restlet/Component;->stopRouters()V

    .line 645
    invoke-virtual {p0}, Lorg/restlet/Component;->stopServers()V

    .line 646
    invoke-virtual {p0}, Lorg/restlet/Component;->stopClients()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopClients()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lorg/restlet/Component;->clients:Lorg/restlet/util/ClientList;

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

    .line 657
    .local v0, "client":Lorg/restlet/Client;
    invoke-virtual {v0}, Lorg/restlet/Client;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 655
    .end local v0    # "client":Lorg/restlet/Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 660
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized stopHelper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/component/ComponentHelper;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_0
    monitor-exit p0

    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stopRealms()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->realms:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lorg/restlet/Component;->realms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/security/Realm;

    .line 681
    .local v1, "realm":Lorg/restlet/security/Realm;
    invoke-virtual {v1}, Lorg/restlet/security/Realm;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 679
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "realm":Lorg/restlet/security/Realm;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 684
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized stopRouters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 692
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

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

    .line 693
    .local v0, "host":Lorg/restlet/routing/VirtualHost;
    invoke-virtual {v0}, Lorg/restlet/routing/VirtualHost;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 692
    .end local v0    # "host":Lorg/restlet/routing/VirtualHost;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 696
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    if-eqz v2, :cond_1

    .line 697
    iget-object v2, p0, Lorg/restlet/Component;->defaultHost:Lorg/restlet/routing/VirtualHost;

    invoke-virtual {v2}, Lorg/restlet/routing/VirtualHost;->stop()V

    .line 700
    :cond_1
    iget-object v2, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    if-eqz v2, :cond_2

    .line 701
    iget-object v2, p0, Lorg/restlet/Component;->internalRouter:Lorg/restlet/routing/Router;

    invoke-virtual {v2}, Lorg/restlet/routing/Router;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 703
    :cond_2
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized stopServers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lorg/restlet/Component;->servers:Lorg/restlet/util/ServerList;

    invoke-virtual {v2}, Lorg/restlet/util/ServerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/Server;

    .line 713
    .local v1, "server":Lorg/restlet/Server;
    invoke-virtual {v1}, Lorg/restlet/Server;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 711
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "server":Lorg/restlet/Server;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 716
    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized stopServices()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 724
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Component;->getServices()Lorg/restlet/util/ServiceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/ServiceList;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateHosts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/restlet/Component;->getHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/component/ComponentHelper;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
