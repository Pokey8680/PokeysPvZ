.class public Lorg/restlet/Client;
.super Lorg/restlet/Connector;
.source "Client.java"


# instance fields
.field private volatile connectTimeout:I

.field private final helper:Lorg/restlet/engine/RestletHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/RestletHelper",
            "<",
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocolName"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p1}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/Client;-><init>(Lorg/restlet/data/Protocol;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
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
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0, p1, v0}, Lorg/restlet/Client;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/Client;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;
    .param p3, "helperClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "protocols":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/restlet/Connector;-><init>(Lorg/restlet/Context;Ljava/util/List;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/restlet/Client;->connectTimeout:I

    .line 94
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lorg/restlet/engine/Engine;->createHelper(Lorg/restlet/Client;Ljava/lang/String;)Lorg/restlet/engine/ConnectorHelper;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/Client;->helper:Lorg/restlet/engine/RestletHelper;

    .line 105
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/restlet/Client;->helper:Lorg/restlet/engine/RestletHelper;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lorg/restlet/Context;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.engine.helper"

    iget-object v2, p0, Lorg/restlet/Client;->helper:Lorg/restlet/engine/RestletHelper;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    return-void

    .line 99
    :cond_1
    iput-object v1, p0, Lorg/restlet/Client;->helper:Lorg/restlet/engine/RestletHelper;

    goto :goto_0

    .line 102
    :cond_2
    iput-object v1, p0, Lorg/restlet/Client;->helper:Lorg/restlet/engine/RestletHelper;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    const/4 v1, 0x0

    .line 120
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lorg/restlet/Client;-><init>(Lorg/restlet/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 121
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/restlet/data/Protocol;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/data/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/restlet/Client;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;)V

    .line 141
    return-void
.end method

.method private getHelper()Lorg/restlet/engine/RestletHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/RestletHelper",
            "<",
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/restlet/Client;->helper:Lorg/restlet/engine/RestletHelper;

    return-object v0
.end method


# virtual methods
.method public getConnectTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iget v0, p0, Lorg/restlet/Client;->connectTimeout:I

    return v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lorg/restlet/Connector;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 179
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/restlet/engine/RestletHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "No available client connector supports the required protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, " Please add the JAR of a matching connector to your classpath."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    sget-object v1, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    iput p1, p0, Lorg/restlet/Client;->connectTimeout:I

    .line 211
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
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Client;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/RestletHelper;->start()V

    .line 220
    :cond_0
    invoke-super {p0}, Lorg/restlet/Connector;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_1
    monitor-exit p0

    return-void

    .line 215
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
    .line 226
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Client;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-super {p0}, Lorg/restlet/Connector;->stop()V

    .line 229
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lorg/restlet/Client;->getHelper()Lorg/restlet/engine/RestletHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/RestletHelper;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
