.class public Lorg/restlet/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field private static final CURRENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/restlet/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attributes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile clientDispatcher:Lorg/restlet/Restlet;

.field private volatile defaultEnroler:Lorg/restlet/security/Enroler;

.field private volatile defaultVerifier:Lorg/restlet/security/Verifier;

.field private volatile logger:Ljava/util/logging/Logger;

.field private final parameters:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serverDispatcher:Lorg/restlet/Restlet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/restlet/Context;->CURRENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "org.restlet"

    invoke-direct {p0, v0}, Lorg/restlet/Context;-><init>(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/Context;-><init>(Ljava/util/logging/Logger;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 4
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/restlet/Context;->attributes:Ljava/util/concurrent/ConcurrentMap;

    .line 146
    iput-object p1, p0, Lorg/restlet/Context;->logger:Ljava/util/logging/Logger;

    .line 147
    new-instance v0, Lorg/restlet/util/Series;

    const-class v1, Lorg/restlet/data/Parameter;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    iput-object v0, p0, Lorg/restlet/Context;->parameters:Lorg/restlet/util/Series;

    .line 149
    iput-object v3, p0, Lorg/restlet/Context;->clientDispatcher:Lorg/restlet/Restlet;

    .line 151
    iput-object v3, p0, Lorg/restlet/Context;->defaultEnroler:Lorg/restlet/security/Enroler;

    .line 152
    iput-object v3, p0, Lorg/restlet/Context;->serverDispatcher:Lorg/restlet/Restlet;

    .line 153
    iput-object v3, p0, Lorg/restlet/Context;->defaultVerifier:Lorg/restlet/security/Verifier;

    .line 154
    return-void
.end method

.method public static getCurrent()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/restlet/Context;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Context;

    return-object v0
.end method

.method public static getCurrentLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "org.restlet"

    invoke-static {v0}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public static setCurrent(Lorg/restlet/Context;)V
    .locals 1
    .param p0, "context"    # Lorg/restlet/Context;

    .prologue
    .line 101
    sget-object v0, Lorg/restlet/Context;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 102
    return-void
.end method


# virtual methods
.method public createChildContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lorg/restlet/engine/util/ChildContext;

    invoke-direct {v0, p0}, Lorg/restlet/engine/util/ChildContext;-><init>(Lorg/restlet/Context;)V

    return-object v0
.end method

.method public getAttributes()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lorg/restlet/Context;->attributes:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getClientDispatcher()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/restlet/Context;->clientDispatcher:Lorg/restlet/Restlet;

    return-object v0
.end method

.method public getDefaultEnroler()Lorg/restlet/security/Enroler;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/restlet/Context;->defaultEnroler:Lorg/restlet/security/Enroler;

    return-object v0
.end method

.method public getDefaultVerifier()Lorg/restlet/security/Verifier;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/restlet/Context;->defaultVerifier:Lorg/restlet/security/Verifier;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/restlet/Context;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public getParameters()Lorg/restlet/util/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lorg/restlet/Context;->parameters:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getServerDispatcher()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/restlet/Context;->serverDispatcher:Lorg/restlet/Restlet;

    return-object v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/restlet/Context;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    monitor-enter v1

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Context;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/restlet/Context;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lorg/restlet/Context;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->putAll(Ljava/util/Map;)V

    .line 299
    :cond_0
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setClientDispatcher(Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "clientDispatcher"    # Lorg/restlet/Restlet;

    .prologue
    .line 309
    iput-object p1, p0, Lorg/restlet/Context;->clientDispatcher:Lorg/restlet/Restlet;

    .line 310
    return-void
.end method

.method public setDefaultEnroler(Lorg/restlet/security/Enroler;)V
    .locals 0
    .param p1, "enroler"    # Lorg/restlet/security/Enroler;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/restlet/Context;->defaultEnroler:Lorg/restlet/security/Enroler;

    .line 321
    return-void
.end method

.method public setDefaultVerifier(Lorg/restlet/security/Verifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/restlet/security/Verifier;

    .prologue
    .line 331
    iput-object p1, p0, Lorg/restlet/Context;->defaultVerifier:Lorg/restlet/security/Verifier;

    .line 332
    return-void
.end method

.method public setLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {p1}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/Context;->setLogger(Ljava/util/logging/Logger;)V

    .line 352
    return-void
.end method

.method public setLogger(Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/restlet/Context;->logger:Ljava/util/logging/Logger;

    .line 342
    return-void
.end method

.method public setParameters(Lorg/restlet/util/Series;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-virtual {p0}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/Series;->clear()V

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/Series;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_0
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setServerDispatcher(Lorg/restlet/Restlet;)V
    .locals 0
    .param p1, "serverDispatcher"    # Lorg/restlet/Restlet;

    .prologue
    .line 380
    iput-object p1, p0, Lorg/restlet/Context;->serverDispatcher:Lorg/restlet/Restlet;

    .line 381
    return-void
.end method
