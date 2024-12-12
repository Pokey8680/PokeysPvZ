.class public abstract Lorg/restlet/Restlet;
.super Ljava/lang/Object;
.source "Restlet.java"

# interfaces
.implements Lorg/restlet/Uniform;


# static fields
.field private static final UNABLE_TO_START:Ljava/lang/String; = "Unable to start the Restlet"


# instance fields
.field private volatile author:Ljava/lang/String;

.field private volatile context:Lorg/restlet/Context;

.field private volatile description:Ljava/lang/String;

.field private volatile finderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/Finder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name:Ljava/lang/String;

.field private volatile owner:Ljava/lang/String;

.field private volatile started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 2
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/restlet/Restlet;->context:Lorg/restlet/Context;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/Restlet;->started:Z

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/Restlet;->name:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lorg/restlet/Restlet;->description:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lorg/restlet/Restlet;->author:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lorg/restlet/Restlet;->owner:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lorg/restlet/Restlet;->finderClass:Ljava/lang/Class;

    .line 131
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unable to fully initialize the Restlet. No Restlet engine available."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to fully initialize the Restlet. No Restlet engine available."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-static {p0, p1}, Lorg/restlet/Restlet;->fireContextChanged(Lorg/restlet/Restlet;Lorg/restlet/Context;)V

    .line 139
    return-void
.end method

.method private static fireContextChanged(Lorg/restlet/Restlet;Lorg/restlet/Context;)V
    .locals 4
    .param p0, "restlet"    # Lorg/restlet/Restlet;
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    instance-of v1, p1, Lorg/restlet/engine/util/ChildContext;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 69
    check-cast v0, Lorg/restlet/engine/util/ChildContext;

    .line 71
    .local v0, "childContext":Lorg/restlet/engine/util/ChildContext;
    invoke-virtual {v0}, Lorg/restlet/engine/util/ChildContext;->getChild()Lorg/restlet/Restlet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0, p0}, Lorg/restlet/engine/util/ChildContext;->setChild(Lorg/restlet/Restlet;)V

    .line 81
    .end local v0    # "childContext":Lorg/restlet/engine/util/ChildContext;
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    instance-of v1, p0, Lorg/restlet/Component;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/restlet/engine/component/ComponentContext;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For security reasons, don\'t pass the component context to child Restlets anymore. Use the Context#createChildContext() method instead. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;
    .locals 4
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
    .line 158
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    const/4 v0, 0x0

    .line 160
    .local v0, "result":Lorg/restlet/resource/Finder;
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getFinderClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getFinderClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/Restlet;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lorg/restlet/resource/Finder;->createFinder(Ljava/lang/Class;Ljava/lang/Class;Lorg/restlet/Context;Ljava/util/logging/Logger;)Lorg/restlet/resource/Finder;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/Restlet;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/Application;->createFinder(Ljava/lang/Class;)Lorg/restlet/resource/Finder;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    const-class v1, Lorg/restlet/resource/Finder;

    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/Restlet;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lorg/restlet/resource/Finder;->createFinder(Ljava/lang/Class;Ljava/lang/Class;Lorg/restlet/Context;Ljava/util/logging/Logger;)Lorg/restlet/resource/Finder;

    move-result-object v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/restlet/Restlet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/restlet/Restlet;->stop()V

    .line 182
    :cond_0
    return-void
.end method

.method public getApplication()Lorg/restlet/Application;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/restlet/Restlet;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/restlet/Restlet;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/restlet/Restlet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFinderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/Finder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lorg/restlet/Restlet;->finderClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 3

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "result":Ljava/util/logging/Logger;
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Lorg/restlet/Context;
    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    .line 245
    :cond_0
    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    .line 249
    :cond_1
    if-nez v1, :cond_2

    .line 250
    const-string v2, "org.restlet"

    invoke-static {p0, v2}, Lorg/restlet/engine/Engine;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 253
    :cond_2
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/restlet/Restlet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/restlet/Restlet;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public final handle(Lorg/restlet/Request;)Lorg/restlet/Response;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 283
    new-instance v0, Lorg/restlet/Response;

    invoke-direct {v0, p1}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 284
    .local v0, "response":Lorg/restlet/Response;
    invoke-virtual {p0, p1, v0}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 285
    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 305
    invoke-static {p2}, Lorg/restlet/Response;->setCurrent(Lorg/restlet/Response;)V

    .line 308
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/Context;->setCurrent(Lorg/restlet/Context;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Restlet;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Restlet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/Restlet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to start the Restlet"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 333
    sget-object v1, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 336
    :cond_1
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 319
    invoke-virtual {p0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to start the Restlet"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    :goto_1
    sget-object v1, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 322
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to start the Restlet"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final handle(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/Uniform;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "onResponseCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 350
    invoke-virtual {p1, p3}, Lorg/restlet/Request;->setOnResponse(Lorg/restlet/Uniform;)V

    .line 351
    invoke-virtual {p0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 352
    return-void
.end method

.method public final handle(Lorg/restlet/Request;Lorg/restlet/Uniform;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "onReceivedCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 363
    new-instance v0, Lorg/restlet/Response;

    invoke-direct {v0, p1}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 364
    .local v0, "response":Lorg/restlet/Response;
    invoke-virtual {p0, p1, v0, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/Uniform;)V

    .line 365
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lorg/restlet/Restlet;->started:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/restlet/Restlet;->started:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/restlet/Restlet;->author:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setContext(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 402
    iput-object p1, p0, Lorg/restlet/Restlet;->context:Lorg/restlet/Context;

    .line 403
    invoke-static {p0, p1}, Lorg/restlet/Restlet;->fireContextChanged(Lorg/restlet/Restlet;Lorg/restlet/Context;)V

    .line 404
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/restlet/Restlet;->description:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setFinderClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/Finder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "finderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/Finder;>;"
    iput-object p1, p0, Lorg/restlet/Restlet;->finderClass:Ljava/lang/Class;

    .line 427
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lorg/restlet/Restlet;->name:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lorg/restlet/Restlet;->owner:Ljava/lang/String;

    .line 447
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
    .line 451
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/restlet/Restlet;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    .line 451
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
    .line 456
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/restlet/Restlet;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
