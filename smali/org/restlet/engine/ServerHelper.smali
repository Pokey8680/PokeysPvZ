.class public Lorg/restlet/engine/ServerHelper;
.super Lorg/restlet/engine/ConnectorHelper;
.source "ServerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/ConnectorHelper",
        "<",
        "Lorg/restlet/Server;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/restlet/Server;)V
    .locals 3
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/restlet/engine/ConnectorHelper;-><init>(Lorg/restlet/Connector;)V

    .line 57
    invoke-virtual {p0}, Lorg/restlet/engine/ServerHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/ConnectorHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 72
    invoke-virtual {p0}, Lorg/restlet/engine/ServerHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Server;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 73
    return-void
.end method

.method public setEphemeralPort(I)V
    .locals 3
    .param p1, "localPort"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/restlet/engine/ServerHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0}, Lorg/restlet/Server;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/restlet/engine/ServerHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public setEphemeralPort(Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/ServerSocket;

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/ServerHelper;->setEphemeralPort(I)V

    .line 97
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/restlet/engine/ConnectorHelper;->stop()V

    .line 104
    invoke-virtual {p0}, Lorg/restlet/engine/ServerHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
