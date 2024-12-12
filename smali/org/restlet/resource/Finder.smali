.class public Lorg/restlet/resource/Finder;
.super Lorg/restlet/Restlet;
.source "Finder.java"


# instance fields
.field private volatile targetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/restlet/resource/Finder;-><init>(Lorg/restlet/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/resource/Finder;->targetClass:Ljava/lang/Class;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    invoke-direct {p0, p1}, Lorg/restlet/Restlet;-><init>(Lorg/restlet/Context;)V

    .line 135
    iput-object p2, p0, Lorg/restlet/resource/Finder;->targetClass:Ljava/lang/Class;

    .line 136
    return-void
.end method

.method public static createFinder(Ljava/lang/Class;Ljava/lang/Class;Lorg/restlet/Context;Ljava/util/logging/Logger;)Lorg/restlet/resource/Finder;
    .locals 7
    .param p2, "context"    # Lorg/restlet/Context;
    .param p3, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/Finder;",
            ">;",
            "Lorg/restlet/Context;",
            "Ljava/util/logging/Logger;",
            ")",
            "Lorg/restlet/resource/Finder;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    .local p1, "finderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/Finder;>;"
    const/4 v3, 0x0

    .line 83
    .local v3, "result":Lorg/restlet/resource/Finder;
    if-eqz p1, :cond_1

    .line 85
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/restlet/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 88
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/restlet/resource/Finder;>;"
    if-eqz v1, :cond_0

    .line 89
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/restlet/resource/Finder;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/restlet/resource/Finder;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    if-eqz p3, :cond_0

    .line 93
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Exception while instantiating the finder."

    invoke-virtual {p3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lorg/restlet/resource/Finder;

    .end local v3    # "result":Lorg/restlet/resource/Finder;
    invoke-direct {v3, p2, p0}, Lorg/restlet/resource/Finder;-><init>(Lorg/restlet/Context;Ljava/lang/Class;)V

    .restart local v3    # "result":Lorg/restlet/resource/Finder;
    goto :goto_0
.end method


# virtual methods
.method public create(Ljava/lang/Class;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/resource/ServerResource;
    .locals 6
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/Response;",
            ")",
            "Lorg/restlet/resource/ServerResource;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    const/4 v2, 0x0

    .line 154
    .local v2, "result":Lorg/restlet/resource/ServerResource;
    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/restlet/resource/ServerResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-object v2

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Exception while instantiating the target server resource."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public create(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/resource/ServerResource;
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, "result":Lorg/restlet/resource/ServerResource;
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lorg/restlet/resource/Finder;->create(Ljava/lang/Class;Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/resource/ServerResource;

    move-result-object v0

    .line 189
    :cond_0
    return-object v0
.end method

.method public find(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/resource/ServerResource;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 203
    invoke-virtual {p0, p1, p2}, Lorg/restlet/resource/Finder;->create(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/resource/ServerResource;

    move-result-object v0

    return-object v0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/restlet/resource/Finder;->targetClass:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 228
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p0, p1, p2}, Lorg/restlet/resource/Finder;->find(Lorg/restlet/Request;Lorg/restlet/Response;)Lorg/restlet/resource/ServerResource;

    move-result-object v0

    .line 231
    .local v0, "targetResource":Lorg/restlet/resource/ServerResource;
    if-nez v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No target resource was defined for this finder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 241
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 256
    .end local v0    # "targetResource":Lorg/restlet/resource/ServerResource;
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v0    # "targetResource":Lorg/restlet/resource/ServerResource;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/restlet/resource/ServerResource;->init(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 245
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :cond_3
    invoke-virtual {v0}, Lorg/restlet/resource/ServerResource;->handle()Lorg/restlet/representation/Representation;

    .line 253
    :cond_4
    invoke-virtual {v0}, Lorg/restlet/resource/ServerResource;->release()V

    goto :goto_0
.end method

.method public setTargetClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/restlet/resource/ServerResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    iput-object p1, p0, Lorg/restlet/resource/Finder;->targetClass:Ljava/lang/Class;

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Finder with no target class"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finder for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/resource/Finder;->getTargetClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
