.class public abstract Lorg/restlet/engine/connector/ClientConnectionHelper;
.super Lorg/restlet/engine/connector/ConnectionHelper;
.source "ClientConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/connector/ConnectionHelper",
        "<",
        "Lorg/restlet/Client;",
        ">;"
    }
.end annotation


# static fields
.field protected static final CONNECTOR_LATCH:Ljava/lang/String; = "org.restlet.engine.connector.latch"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 1
    .param p1, "connector"    # Lorg/restlet/Client;

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/connector/ConnectionHelper;-><init>(Lorg/restlet/Connector;Z)V

    .line 95
    return-void
.end method


# virtual methods
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
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lorg/restlet/engine/connector/Connection;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getInboundBufferSize()I

    move-result v5

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getOutboundBufferSize()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/restlet/engine/connector/Connection;-><init>(Lorg/restlet/engine/connector/ConnectionHelper;Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;II)V

    return-object v0
.end method

.method protected createController()Lorg/restlet/engine/connector/ConnectionController;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lorg/restlet/engine/connector/ConnectionController;

    invoke-direct {v0, p0}, Lorg/restlet/engine/connector/ConnectionController;-><init>(Lorg/restlet/engine/connector/ConnectionHelper;)V

    return-object v0
.end method

.method protected createSocketChannel(ZLjava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 1
    .param p1, "secure"    # Z
    .param p2, "hostDomain"    # Ljava/lang/String;
    .param p3, "hostPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->createSocketChannel(ZLjava/net/InetSocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected createSocketChannel(ZLjava/net/InetSocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 2
    .param p1, "secure"    # Z
    .param p2, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 129
    .local v0, "result":Ljava/nio/channels/SocketChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 132
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->configure(Ljava/net/Socket;)V

    .line 135
    invoke-virtual {v0, p2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 136
    return-object v0
.end method

.method public doHandleInbound(Lorg/restlet/Response;)V
    .locals 5
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 163
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Handling response..."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "handled":Z
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    .line 168
    .local v1, "request":Lorg/restlet/Request;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/restlet/Request;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v1}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->unblock(Lorg/restlet/Response;)V

    .line 181
    .end local v0    # "handled":Z
    .end local v1    # "request":Lorg/restlet/Request;
    :cond_1
    :goto_0
    return-void

    .line 177
    .restart local v0    # "handled":Z
    .restart local v1    # "request":Lorg/restlet/Request;
    :cond_2
    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provisional response ignored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doHandleOutbound(Lorg/restlet/Response;)V
    .locals 6
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 186
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client request to be sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getBestConnection(Lorg/restlet/Request;)Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    .line 197
    .local v0, "bestConn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/restlet/engine/connector/OutboundWay;->handle(Lorg/restlet/Response;)V

    .line 215
    .end local v0    # "bestConn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    :cond_1
    :goto_0
    return-void

    .line 200
    .restart local v0    # "bestConn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to find a connection to send the request"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 202
    sget-object v2, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    const-string v3, "Unable to find a connection to send the request"

    invoke-virtual {p1, v2, v3}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->unblock(Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v0    # "bestConn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    :catch_0
    move-exception v1

    .line 208
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "An error occured during the communication with the remote server."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    sget-object v2, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {p1, v2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 213
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->unblock(Lorg/restlet/Response;)V

    goto :goto_0
.end method

.method protected getBestConnection(Lorg/restlet/Request;)Lorg/restlet/engine/connector/Connection;
    .locals 12
    .param p1, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            ")",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 230
    const/4 v6, 0x0

    .line 234
    .local v6, "result":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    const/4 v4, 0x0

    .line 235
    .local v4, "hostConnectionCount":I
    const v0, 0x7fffffff

    .line 236
    .local v0, "bestScore":I
    const/4 v3, 0x0

    .line 239
    .local v3, "foundConn":Z
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getSocketAddress(Lorg/restlet/Request;)Ljava/net/InetSocketAddress;

    move-result-object v7

    .line 241
    .local v7, "socketAddress":Ljava/net/InetSocketAddress;
    if-nez v7, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Unable to create a socket address related to the request."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-object v6

    .line 248
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 249
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;>;"
    :cond_1
    :goto_1
    if-nez v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 250
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/connector/Connection;

    .line 252
    .local v1, "currConn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 253
    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 254
    move-object v6, v1

    .line 255
    const/4 v3, 0x1

    goto :goto_1

    .line 256
    :cond_2
    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v8

    sget-object v9, Lorg/restlet/engine/connector/ConnectionState;->OPEN:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {v8, v9}, Lorg/restlet/engine/connector/ConnectionState;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-gtz v8, :cond_1

    .line 263
    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->getLoadScore()I

    move-result v2

    .line 265
    .local v2, "currScore":I
    if-le v0, v2, :cond_3

    .line 266
    move v0, v2

    .line 267
    move-object v6, v1

    .line 270
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 277
    .end local v1    # "currConn":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    .end local v2    # "currScore":I
    :cond_4
    if-eqz v3, :cond_5

    .line 278
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reusing an existing client connection to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getMaxTotalConnections()I

    move-result v8

    if-eq v8, v10, :cond_7

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getMaxTotalConnections()I

    move-result v9

    if-lt v8, v9, :cond_7

    .line 284
    if-nez v6, :cond_6

    .line 285
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Unable to create a new connection. Maximum total number of connections reached!"

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enqueue Request to an existing client connection to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_7
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getMaxConnectionsPerHost()I

    move-result v8

    if-eq v8, v10, :cond_9

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getMaxConnectionsPerHost()I

    move-result v8

    if-lt v4, v8, :cond_9

    .line 296
    if-nez v6, :cond_8

    .line 297
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create a new connection. Maximum number of connections reached for host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enqueue Request to an existing client connection to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_9
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 310
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating a new client connection to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 316
    :cond_a
    invoke-virtual {p1}, Lorg/restlet/Request;->isConfidential()Z

    move-result v8

    invoke-virtual {p0, v8, v7}, Lorg/restlet/engine/connector/ClientConnectionHelper;->createSocketChannel(ZLjava/net/InetSocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v8

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v7}, Lorg/restlet/engine/connector/ClientConnectionHelper;->checkout(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;

    move-result-object v6

    .line 319
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "proxyHost"

    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyPort()I
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "proxyPort"

    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "proxyPort":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 346
    const-string v0, "3128"

    .line 349
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected getSocketAddress(Lorg/restlet/Request;)Ljava/net/InetSocketAddress;
    .locals 9
    .param p1, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v5, 0x0

    .line 368
    .local v5, "result":Ljava/net/InetSocketAddress;
    const/4 v0, 0x0

    .line 369
    .local v0, "hostDomain":Ljava/lang/String;
    const/4 v1, 0x0

    .line 372
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getProxyHost()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "proxyDomain":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 375
    move-object v0, v3

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getProxyPort()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 400
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 401
    new-instance v5, Ljava/net/InetSocketAddress;

    .end local v5    # "result":Ljava/net/InetSocketAddress;
    invoke-direct {v5, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 402
    .restart local v5    # "result":Ljava/net/InetSocketAddress;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    if-nez v6, :cond_4

    .line 403
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 378
    :catch_0
    move-exception v2

    .line 379
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "The proxy port must be a valid numeric value."

    invoke-virtual {v6, v7, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6}, Ljava/net/UnknownHostException;-><init>()V

    throw v6

    .line 385
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v4

    .line 389
    .local v4, "resourceRef":Lorg/restlet/data/Reference;
    :goto_1
    invoke-virtual {v4}, Lorg/restlet/data/Reference;->getHostDomain()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {v4}, Lorg/restlet/data/Reference;->getHostPort()I

    move-result v1

    .line 391
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 392
    invoke-virtual {v4}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 393
    invoke-virtual {v4}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v1

    goto :goto_0

    .line 385
    .end local v4    # "resourceRef":Lorg/restlet/data/Reference;
    :cond_2
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    goto :goto_1

    .line 395
    .restart local v4    # "resourceRef":Lorg/restlet/data/Reference;
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getProtocols()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/restlet/data/Protocol;

    invoke-virtual {v6}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v1

    goto :goto_0

    .line 407
    .end local v4    # "resourceRef":Lorg/restlet/data/Reference;
    :cond_4
    return-object v5
.end method

.method public getSocketConnectTimeoutMs()I
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    check-cast v1, Lorg/restlet/Client;

    invoke-virtual {v1}, Lorg/restlet/Client;->getConnectTimeout()I

    move-result v0

    .line 419
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/util/Series;->getNames()Ljava/util/Set;

    move-result-object v1

    const-string v2, "socketConnectTimeoutMs"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "socketConnectTimeoutMs"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 424
    :cond_0
    return v0
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling client request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Request;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Request;->isExpectingResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 439
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    const-string v3, "org.restlet.engine.connector.latch"

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {p0, p2}, Lorg/restlet/engine/connector/ClientConnectionHelper;->addOutboundMessage(Lorg/restlet/Response;)V

    .line 445
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 457
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0, p2}, Lorg/restlet/engine/connector/ClientConnectionHelper;->addOutboundMessage(Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while handling a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Protocol;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " client request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 455
    sget-object v2, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handleInbound(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 461
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isSynchronous()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->handleInbound(Lorg/restlet/Response;Z)V

    .line 462
    return-void
.end method

.method protected handleOutbound(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 466
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->handleOutbound(Lorg/restlet/Response;Z)V

    .line 467
    return-void
.end method

.method public isControllerDaemon()Z
    .locals 3

    .prologue
    .line 471
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "controllerDaemon"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProxying()Z
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting the internal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getProtocols()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 483
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->start()V

    .line 484
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping the internal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getProtocols()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 489
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->stop()V

    .line 490
    return-void
.end method

.method protected unblock(Lorg/restlet/Response;)V
    .locals 4
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 499
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const-string v2, "org.restlet.engine.connector.latch"

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 503
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 511
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The client of the following response couldn\'t be unblocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
