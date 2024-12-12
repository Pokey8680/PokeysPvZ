.class public abstract Lorg/restlet/engine/connector/ServerConnectionHelper;
.super Lorg/restlet/engine/connector/ConnectionHelper;
.source "ServerConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/connector/ConnectionHelper",
        "<",
        "Lorg/restlet/Server;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile serverSocketChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>(Lorg/restlet/Server;)V
    .locals 3
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/connector/ConnectionHelper;-><init>(Lorg/restlet/Connector;Z)V

    .line 96
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method protected abstract canHandle(Lorg/restlet/engine/connector/Connection;Lorg/restlet/Response;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;",
            "Lorg/restlet/Response;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected createConnection(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;
    .locals 7
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "controller"    # Lorg/restlet/engine/connector/ConnectionController;
    .param p3, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/restlet/engine/connector/ConnectionController;",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/restlet/engine/connector/Connection;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getInboundBufferSize()I

    move-result v5

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getOutboundBufferSize()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/restlet/engine/connector/Connection;-><init>(Lorg/restlet/engine/connector/ConnectionHelper;Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;II)V

    return-object v0
.end method

.method protected bridge synthetic createController()Lorg/restlet/engine/connector/ConnectionController;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->createController()Lorg/restlet/engine/connector/ServerConnectionController;

    move-result-object v0

    return-object v0
.end method

.method protected createController()Lorg/restlet/engine/connector/ServerConnectionController;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/restlet/engine/connector/ServerConnectionController;

    invoke-direct {v0, p0}, Lorg/restlet/engine/connector/ServerConnectionController;-><init>(Lorg/restlet/engine/connector/ServerConnectionHelper;)V

    return-object v0
.end method

.method protected abstract createRequest(Lorg/restlet/engine/connector/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/Request;"
        }
    .end annotation
.end method

.method protected createServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    .line 154
    .local v0, "result":Ljava/nio/channels/ServerSocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    .line 155
    .local v1, "socket":Ljava/net/ServerSocket;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getSocketReceiveBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 156
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->isSocketReuseAddress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 157
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getMaxIoIdleTimeMs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 158
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->createSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 160
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 161
    return-object v0
.end method

.method protected createSocketAddress()Ljava/net/SocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0}, Lorg/restlet/Server;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0}, Lorg/restlet/Server;->getPort()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object v0, v1

    .line 175
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0}, Lorg/restlet/Server;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0}, Lorg/restlet/Server;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public doHandleInbound(Lorg/restlet/Response;)V
    .locals 3
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 181
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Handling request..."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {p1}, Lorg/restlet/Response;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->isAutoCommitting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/restlet/Response;->setCommitted(Z)V

    .line 195
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Response;->isCommitted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->addOutboundMessage(Lorg/restlet/Response;)V

    .line 199
    :cond_1
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p1, v1, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doHandleOutbound(Lorg/restlet/Response;)V
    .locals 6
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "Handling response..."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    check-cast v2, Lorg/restlet/engine/connector/InboundRequest;

    .line 206
    .local v2, "request":Lorg/restlet/engine/connector/InboundRequest;
    invoke-interface {v2}, Lorg/restlet/engine/connector/InboundRequest;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    .line 208
    .local v0, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Request;->isExpectingResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->canHandle(Lorg/restlet/engine/connector/Connection;Lorg/restlet/Response;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/restlet/engine/connector/OutboundWay;->handle(Lorg/restlet/Response;)V

    .line 229
    .end local v0    # "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    .end local v2    # "request":Lorg/restlet/engine/connector/InboundRequest;
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v0    # "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    .restart local v2    # "request":Lorg/restlet/engine/connector/InboundRequest;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getOutboundMessages()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getController()Lorg/restlet/engine/connector/ServerConnectionController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/ServerConnectionController;->wakeup()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Unable to handle outbound message"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 225
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    const-string v4, "A response for a request expecting no one was ignored"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getController()Lorg/restlet/engine/connector/ConnectionController;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getController()Lorg/restlet/engine/connector/ServerConnectionController;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lorg/restlet/engine/connector/ServerConnectionController;
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/ServerConnectionController;

    return-object v0
.end method

.method public getServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/restlet/engine/connector/ServerConnectionHelper;->serverSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    return-object v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/connector/ConnectionHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 257
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Server;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 258
    return-void
.end method

.method protected handleInbound(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->handleInbound(Lorg/restlet/Response;Z)V

    .line 263
    return-void
.end method

.method protected handleOutbound(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->handleOutbound(Lorg/restlet/Response;Z)V

    .line 268
    return-void
.end method

.method public isControllerDaemon()Z
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "controllerDaemon"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProxying()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public isReuseAddress()Z
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "reuseAddress"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEphemeralPort(I)V
    .locals 3
    .param p1, "localPort"    # I

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Server;

    invoke-virtual {v0}, Lorg/restlet/Server;->getPort()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    return-void
.end method

.method public setEphemeralPort(Ljava/net/ServerSocket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/ServerSocket;

    .prologue
    .line 314
    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->setEphemeralPort(I)V

    .line 315
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->createServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/restlet/engine/connector/ServerConnectionHelper;->serverSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 323
    iget-object v1, p0, Lorg/restlet/engine/connector/ServerConnectionHelper;->serverSocketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->setEphemeralPort(Ljava/net/ServerSocket;)V

    .line 326
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting the internal "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getProtocols()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " server on port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    check-cast v1, Lorg/restlet/Server;

    invoke-virtual {v1}, Lorg/restlet/Server;->getActualPort()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 329
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getController()Lorg/restlet/engine/connector/ServerConnectionController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ServerConnectionController;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    :goto_0
    monitor-exit p0

    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Interrupted while waiting for starting latch. Stopping..."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 320
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping the internal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getProtocols()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 349
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->stop()V

    .line 352
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ephemeralPort"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
