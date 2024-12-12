.class public abstract Lorg/restlet/engine/connector/ConnectionHelper;
.super Lorg/restlet/engine/connector/BaseHelper;
.source "ConnectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Connector;",
        ">",
        "Lorg/restlet/engine/connector/BaseHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private volatile connectionPool:Lorg/restlet/engine/connector/ConnectionPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/connector/ConnectionPool",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/Connector;Z)V
    .locals 1
    .param p2, "clientSide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    .local p1, "connector":Lorg/restlet/Connector;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/BaseHelper;-><init>(Lorg/restlet/Connector;Z)V

    .line 176
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionHelper;->connections:Ljava/util/List;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionHelper;->connectionPool:Lorg/restlet/engine/connector/ConnectionPool;

    .line 178
    return-void
.end method


# virtual methods
.method public addOutboundMessage(Lorg/restlet/Response;)V
    .locals 3
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 187
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.application"

    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p1}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.context"

    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_1
    invoke-static {}, Lorg/restlet/routing/VirtualHost;->getCurrent()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p1}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    const-string v1, "org.restlet.virtualHost"

    invoke-static {}, Lorg/restlet/routing/VirtualHost;->getCurrent()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getOutboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionController;->wakeup()V

    .line 204
    return-void
.end method

.method protected checkin(Lorg/restlet/engine/connector/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->clear()V

    .line 216
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getConnectionPool()Lorg/restlet/engine/connector/ConnectionPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/engine/connector/ConnectionPool;->checkin(Ljava/lang/Object;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected checkout(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;
    .locals 2
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
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    const/4 v0, 0x0

    .line 238
    .local v0, "result":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isPooledConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getConnectionPool()Lorg/restlet/engine/connector/ConnectionPool;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionPool;->checkout()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    check-cast v0, Lorg/restlet/engine/connector/Connection;

    .line 240
    .restart local v0    # "result":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {v0, p1, p2, p3}, Lorg/restlet/engine/connector/Connection;->reuse(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)V

    .line 245
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/restlet/engine/connector/ConnectionHelper;->createConnection(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public configure(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isSocketKeepAlive()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 257
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isSocketOobInline()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 258
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getSocketReceiveBufferSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 259
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isSocketReuseAddress()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 260
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getSocketLingerTimeMs()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getSocketLingerTimeMs()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 261
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getSocketSendBufferSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 262
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getMaxIoIdleTimeMs()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 263
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isSocketNoDelay()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 264
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getSocketTrafficClass()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 265
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract createConnection(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/restlet/engine/connector/ConnectionController;",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public createConnectionPool()V
    .locals 2

    .prologue
    .line 287
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lorg/restlet/engine/connector/ConnectionPool;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getInitialConnections()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/restlet/engine/connector/ConnectionPool;-><init>(Lorg/restlet/engine/connector/ConnectionHelper;I)V

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionHelper;->connectionPool:Lorg/restlet/engine/connector/ConnectionPool;

    .line 291
    :cond_0
    return-void
.end method

.method public abstract createInboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/InboundWay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;I)",
            "Lorg/restlet/engine/connector/InboundWay;"
        }
    .end annotation
.end method

.method public abstract createOutboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/OutboundWay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;I)",
            "Lorg/restlet/engine/connector/OutboundWay;"
        }
    .end annotation
.end method

.method protected doFinishStop()V
    .locals 1

    .prologue
    .line 319
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-super {p0}, Lorg/restlet/engine/connector/BaseHelper;->doFinishStop()V

    .line 321
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->isPooledConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/connector/ConnectionHelper;->connectionPool:Lorg/restlet/engine/connector/ConnectionPool;

    .line 324
    :cond_0
    return-void
.end method

.method protected doGracefulStop()V
    .locals 3

    .prologue
    .line 328
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-super {p0}, Lorg/restlet/engine/connector/BaseHelper;->doGracefulStop()V

    .line 331
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getConnections()Ljava/util/List;

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

    check-cast v0, Lorg/restlet/engine/connector/Connection;

    .line 332
    .local v0, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    goto :goto_0

    .line 334
    .end local v0    # "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    :cond_0
    return-void
.end method

.method public getConnectionPool()Lorg/restlet/engine/connector/ConnectionPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/ConnectionPool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/ConnectionHelper;->connectionPool:Lorg/restlet/engine/connector/ConnectionPool;

    return-object v0
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/ConnectionHelper;->connections:Ljava/util/List;

    return-object v0
.end method

.method public getInitialConnections()I
    .locals 3

    .prologue
    .line 363
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "initialConnections"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxConnectionsPerHost()I
    .locals 3

    .prologue
    .line 374
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxConnectionsPerHost"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxTotalConnections()I
    .locals 3

    .prologue
    .line 385
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "maxTotalConnections"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSocketLingerTimeMs()I
    .locals 3

    .prologue
    .line 398
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketLingerTimeMs"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSocketReceiveBufferSize()I
    .locals 3

    .prologue
    .line 411
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketReceiveBufferSize"

    const-string v2, "8192"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSocketSendBufferSize()I
    .locals 3

    .prologue
    .line 424
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketSendBufferSize"

    const-string v2, "8192"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSocketTrafficClass()I
    .locals 3

    .prologue
    .line 435
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketTrafficClass"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPersistingConnections()Z
    .locals 3

    .prologue
    .line 446
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "persistingConnections"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPipeliningConnections()Z
    .locals 3

    .prologue
    .line 456
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "pipeliningConnections"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPooledConnection()Z
    .locals 3

    .prologue
    .line 467
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "pooledConnections"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract isProxying()Z
.end method

.method public isSocketKeepAlive()Z
    .locals 3

    .prologue
    .line 488
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketKeepAlive"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSocketNoDelay()Z
    .locals 3

    .prologue
    .line 499
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketNoDelay"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSocketOobInline()Z
    .locals 3

    .prologue
    .line 511
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketOobInline"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSocketReuseAddress()Z
    .locals 3

    .prologue
    .line 523
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "socketReuseAddress"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
