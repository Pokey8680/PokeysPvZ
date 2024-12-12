.class public Lorg/restlet/routing/VirtualHost;
.super Lorg/restlet/routing/Router;
.source "VirtualHost.java"


# static fields
.field private static final CURRENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile hostDomain:Ljava/lang/String;

.field private volatile hostPort:Ljava/lang/String;

.field private volatile hostScheme:Ljava/lang/String;

.field private volatile parentContext:Lorg/restlet/Context;

.field private volatile resourceDomain:Ljava/lang/String;

.field private volatile resourcePort:Ljava/lang/String;

.field private volatile resourceScheme:Ljava/lang/String;

.field private volatile serverAddress:Ljava/lang/String;

.field private volatile serverPort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/restlet/routing/VirtualHost;->CURRENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/routing/VirtualHost;-><init>(Lorg/restlet/Context;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 10
    .param p1, "parentContext"    # Lorg/restlet/Context;

    .prologue
    .line 199
    const-string v2, ".*"

    const-string v3, ".*"

    const-string v4, ".*"

    const-string v5, ".*"

    const-string v6, ".*"

    const-string v7, ".*"

    const-string v8, ".*"

    const-string v9, ".*"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/restlet/routing/VirtualHost;-><init>(Lorg/restlet/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "parentContext"    # Lorg/restlet/Context;
    .param p2, "hostDomain"    # Ljava/lang/String;
    .param p3, "hostPort"    # Ljava/lang/String;
    .param p4, "hostScheme"    # Ljava/lang/String;
    .param p5, "resourceDomain"    # Ljava/lang/String;
    .param p6, "resourcePort"    # Ljava/lang/String;
    .param p7, "resourceScheme"    # Ljava/lang/String;
    .param p8, "serverAddress"    # Ljava/lang/String;
    .param p9, "serverPort"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 229
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/restlet/routing/Router;-><init>(Lorg/restlet/Context;)V

    .line 233
    invoke-virtual {p0, v1}, Lorg/restlet/routing/VirtualHost;->setDefaultMatchingMode(I)V

    .line 234
    invoke-virtual {p0, v1}, Lorg/restlet/routing/VirtualHost;->setRoutingMode(I)V

    .line 236
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->parentContext:Lorg/restlet/Context;

    .line 238
    iput-object p2, p0, Lorg/restlet/routing/VirtualHost;->hostDomain:Ljava/lang/String;

    .line 239
    iput-object p3, p0, Lorg/restlet/routing/VirtualHost;->hostPort:Ljava/lang/String;

    .line 240
    iput-object p4, p0, Lorg/restlet/routing/VirtualHost;->hostScheme:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lorg/restlet/routing/VirtualHost;->resourceDomain:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lorg/restlet/routing/VirtualHost;->resourcePort:Ljava/lang/String;

    .line 244
    iput-object p7, p0, Lorg/restlet/routing/VirtualHost;->resourceScheme:Ljava/lang/String;

    .line 246
    iput-object p8, p0, Lorg/restlet/routing/VirtualHost;->serverAddress:Ljava/lang/String;

    .line 247
    iput-object p9, p0, Lorg/restlet/routing/VirtualHost;->serverPort:Ljava/lang/String;

    .line 248
    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrent()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lorg/restlet/routing/VirtualHost;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLocalHostAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLocalHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 137
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setCurrent(Ljava/lang/Integer;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/Integer;

    .prologue
    .line 151
    sget-object v0, Lorg/restlet/routing/VirtualHost;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 152
    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 286
    invoke-virtual {p0, p2}, Lorg/restlet/routing/VirtualHost;->checkContext(Lorg/restlet/Restlet;)V

    .line 287
    invoke-super {p0, p1, p2}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attach(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lorg/restlet/routing/VirtualHost;->checkContext(Lorg/restlet/Restlet;)V

    .line 265
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->attach(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method public attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    .locals 1
    .param p1, "defaultTarget"    # Lorg/restlet/Restlet;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/restlet/routing/VirtualHost;->checkContext(Lorg/restlet/Restlet;)V

    .line 306
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v0

    return-object v0
.end method

.method protected checkContext(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "target"    # Lorg/restlet/Restlet;

    .prologue
    .line 316
    invoke-virtual {p1}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->parentContext:Lorg/restlet/Context;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->parentContext:Lorg/restlet/Context;

    invoke-virtual {v0}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 319
    :cond_0
    return-void
.end method

.method public createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)",
            "Lorg/restlet/resource/Finder;"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-super {p0, p1}, Lorg/restlet/routing/Router;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    .line 335
    .local v0, "result":Lorg/restlet/resource/Finder;
    invoke-virtual {p0}, Lorg/restlet/routing/VirtualHost;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/Finder;->setContext(Lorg/restlet/Context;)V

    .line 336
    return-object v0
.end method

.method protected createRoute(Ljava/lang/String;Lorg/restlet/Restlet;I)Lorg/restlet/routing/TemplateRoute;
    .locals 2
    .param p1, "uriPattern"    # Ljava/lang/String;
    .param p2, "target"    # Lorg/restlet/Restlet;
    .param p3, "matchingMode"    # I

    .prologue
    .line 342
    new-instance v0, Lorg/restlet/routing/VirtualHost$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lorg/restlet/routing/VirtualHost$1;-><init>(Lorg/restlet/routing/VirtualHost;Lorg/restlet/routing/Router;Ljava/lang/String;Lorg/restlet/Restlet;)V

    .line 357
    .local v0, "result":Lorg/restlet/routing/TemplateRoute;
    invoke-virtual {v0}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/restlet/routing/Template;->setMatchingMode(I)V

    .line 358
    invoke-virtual {p0}, Lorg/restlet/routing/VirtualHost;->getDefaultMatchingQuery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/routing/TemplateRoute;->setMatchingQuery(Z)V

    .line 359
    return-object v0
.end method

.method public getHostDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->hostDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->hostPort:Ljava/lang/String;

    return-object v0
.end method

.method public getHostScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->hostScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->resourceDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->resourcePort:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->resourceScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/restlet/routing/VirtualHost;->serverPort:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "parentContext"    # Lorg/restlet/Context;

    .prologue
    .line 444
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->parentContext:Lorg/restlet/Context;

    .line 445
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Lorg/restlet/routing/Router;->setContext(Lorg/restlet/Context;)V

    .line 447
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public setHostDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostDomain"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->hostDomain:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setHostPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostPort"    # Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->hostPort:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setHostScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostScheme"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->hostScheme:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setResourceDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceDomain"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->resourceDomain:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setResourcePort(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePort"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->resourcePort:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setResourceScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceScheme"    # Ljava/lang/String;

    .prologue
    .line 512
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->resourceScheme:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverAddress"    # Ljava/lang/String;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->serverAddress:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setServerPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverPort"    # Ljava/lang/String;

    .prologue
    .line 534
    iput-object p1, p0, Lorg/restlet/routing/VirtualHost;->serverPort:Ljava/lang/String;

    .line 535
    return-void
.end method
