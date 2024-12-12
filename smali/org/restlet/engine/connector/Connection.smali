.class public Lorg/restlet/engine/connector/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lorg/restlet/util/SelectionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Connector;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/restlet/util/SelectionListener;"
    }
.end annotation


# instance fields
.field private final helper:Lorg/restlet/engine/connector/ConnectionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final inboundWay:Lorg/restlet/engine/connector/InboundWay;

.field private volatile lastActivity:J

.field private volatile maxIoIdleTimeMs:I

.field private final outboundWay:Lorg/restlet/engine/connector/OutboundWay;

.field private volatile persistent:Z

.field private volatile pipelining:Z

.field private volatile readableSelectionChannel:Lorg/restlet/engine/io/ReadableSelectionChannel;

.field private volatile registration:Lorg/restlet/util/SelectionRegistration;

.field private volatile socketAddress:Ljava/net/SocketAddress;

.field private volatile socketChannel:Ljava/nio/channels/SocketChannel;

.field private volatile state:Lorg/restlet/engine/connector/ConnectionState;

.field private volatile writableSelectionChannel:Lorg/restlet/engine/io/WritableSelectionChannel;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/ConnectionHelper;Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;II)V
    .locals 1
    .param p2, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p3, "controller"    # Lorg/restlet/engine/connector/ConnectionController;
    .param p4, "socketAddress"    # Ljava/net/InetSocketAddress;
    .param p5, "inboundBufferSize"    # I
    .param p6, "outboundBufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<TT;>;",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/restlet/engine/connector/ConnectionController;",
            "Ljava/net/InetSocketAddress;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    .local p1, "helper":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/restlet/engine/connector/Connection;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    .line 130
    invoke-virtual {p1, p0, p5}, Lorg/restlet/engine/connector/ConnectionHelper;->createInboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->inboundWay:Lorg/restlet/engine/connector/InboundWay;

    .line 131
    invoke-virtual {p1, p0, p6}, Lorg/restlet/engine/connector/ConnectionHelper;->createOutboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->outboundWay:Lorg/restlet/engine/connector/OutboundWay;

    .line 132
    invoke-virtual {p0, p2, p3, p4}, Lorg/restlet/engine/connector/Connection;->init(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)V

    .line 133
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->inboundWay:Lorg/restlet/engine/connector/InboundWay;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->clear()V

    .line 141
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->outboundWay:Lorg/restlet/engine/connector/OutboundWay;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/OutboundWay;->clear()V

    .line 142
    iput-object v1, p0, Lorg/restlet/engine/connector/Connection;->readableSelectionChannel:Lorg/restlet/engine/io/ReadableSelectionChannel;

    .line 143
    iput-object v1, p0, Lorg/restlet/engine/connector/Connection;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 144
    iput-object v1, p0, Lorg/restlet/engine/connector/Connection;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 145
    sget-object v0, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->state:Lorg/restlet/engine/connector/ConnectionState;

    .line 146
    iput-object v1, p0, Lorg/restlet/engine/connector/Connection;->writableSelectionChannel:Lorg/restlet/engine/io/WritableSelectionChannel;

    .line 147
    return-void
.end method

.method public close(Z)V
    .locals 7
    .param p1, "graceful"    # Z

    .prologue
    .line 157
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gracefully"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 165
    :cond_0
    sget-object v2, Lorg/restlet/engine/connector/ConnectionState;->CLOSING:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/Connection;->setState(Lorg/restlet/engine/connector/ConnectionState;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " immediately"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 175
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 177
    .local v1, "socket":Ljava/net/Socket;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 178
    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/Connection;->shutdown(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 187
    .restart local v1    # "socket":Ljava/net/Socket;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 188
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/InboundWay;->onClosed()V

    .line 195
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/OutboundWay;->onClosed()V

    .line 196
    sget-object v2, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/Connection;->setState(Lorg/restlet/engine/connector/ConnectionState;)V

    .line 198
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is now closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    .end local v1    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Unable to properly shutdown socket"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 190
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Unable to properly close socket"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/InboundWay;->onClosed()V

    .line 195
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/OutboundWay;->onClosed()V

    .line 196
    sget-object v2, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/Connection;->setState(Lorg/restlet/engine/connector/ConnectionState;)V

    .line 198
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is now closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/InboundWay;->onClosed()V

    .line 195
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/OutboundWay;->onClosed()V

    .line 196
    sget-object v3, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {p0, v3}, Lorg/restlet/engine/connector/Connection;->setState(Lorg/restlet/engine/connector/ConnectionState;)V

    .line 198
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is now closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6
    throw v2
.end method

.method public commit(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 218
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/restlet/Response;->setCommitted(Z)V

    .line 219
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/engine/connector/ConnectionHelper;->addOutboundMessage(Lorg/restlet/Response;)V

    .line 220
    return-void
.end method

.method protected createReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;
    .locals 3

    .prologue
    .line 228
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    new-instance v0, Lorg/restlet/engine/connector/Connection$1;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/restlet/engine/connector/Connection$1;-><init>(Lorg/restlet/engine/connector/Connection;Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V

    return-object v0
.end method

.method protected createWritableSelectionChannel()Lorg/restlet/engine/io/WritableSelectionChannel;
    .locals 3

    .prologue
    .line 243
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    new-instance v0, Lorg/restlet/engine/connector/Connection$2;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/restlet/engine/connector/Connection$2;-><init>(Lorg/restlet/engine/connector/Connection;Ljava/nio/channels/SocketChannel;Lorg/restlet/util/SelectionRegistration;)V

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHelper()Lorg/restlet/engine/connector/ConnectionHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    return-object v0
.end method

.method public getInboundBufferSize()I
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getInboundBufferSize()I

    move-result v0

    return v0
.end method

.method public getInboundWay()Lorg/restlet/engine/connector/InboundWay;
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->inboundWay:Lorg/restlet/engine/connector/InboundWay;

    return-object v0
.end method

.method public getLastActivity()J
    .locals 2

    .prologue
    .line 297
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-wide v0, p0, Lorg/restlet/engine/connector/Connection;->lastActivity:J

    return-wide v0
.end method

.method public getLoadScore()I
    .locals 2

    .prologue
    .line 307
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->getLoadScore()I

    move-result v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/OutboundWay;->getLoadScore()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 316
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getMaxIoIdleTimeMs()I
    .locals 1

    .prologue
    .line 327
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget v0, p0, Lorg/restlet/engine/connector/Connection;->maxIoIdleTimeMs:I

    return v0
.end method

.method public getOutboundBufferSize()I
    .locals 1

    .prologue
    .line 337
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getOutboundBufferSize()I

    move-result v0

    return v0
.end method

.method public getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->outboundWay:Lorg/restlet/engine/connector/OutboundWay;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;
    .locals 1

    .prologue
    .line 364
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->readableSelectionChannel:Lorg/restlet/engine/io/ReadableSelectionChannel;

    return-object v0
.end method

.method public getRegistration()Lorg/restlet/util/SelectionRegistration;
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->registration:Lorg/restlet/util/SelectionRegistration;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    goto :goto_0
.end method

.method public getSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 394
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->socketAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getState()Lorg/restlet/engine/connector/ConnectionState;
    .locals 1

    .prologue
    .line 412
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->state:Lorg/restlet/engine/connector/ConnectionState;

    return-object v0
.end method

.method public getWritableSelectionChannel()Lorg/restlet/engine/io/WritableSelectionChannel;
    .locals 1

    .prologue
    .line 421
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->writableSelectionChannel:Lorg/restlet/engine/io/WritableSelectionChannel;

    return-object v0
.end method

.method public hasTimedOut()Z
    .locals 4

    .prologue
    .line 430
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getMaxIoIdleTimeMs()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLastActivity()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getMaxIoIdleTimeMs()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "controller"    # Lorg/restlet/engine/connector/ConnectionController;
    .param p3, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->isPersistingConnections()Z

    move-result v0

    iput-boolean v0, p0, Lorg/restlet/engine/connector/Connection;->persistent:Z

    .line 449
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->isPipeliningConnections()Z

    move-result v0

    iput-boolean v0, p0, Lorg/restlet/engine/connector/Connection;->pipelining:Z

    .line 450
    iget-object v0, p0, Lorg/restlet/engine/connector/Connection;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getMaxIoIdleTimeMs()I

    move-result v0

    iput v0, p0, Lorg/restlet/engine/connector/Connection;->maxIoIdleTimeMs:I

    .line 451
    sget-object v0, Lorg/restlet/engine/connector/ConnectionState;->OPENING:Lorg/restlet/engine/connector/ConnectionState;

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->state:Lorg/restlet/engine/connector/ConnectionState;

    .line 452
    iput-object p1, p0, Lorg/restlet/engine/connector/Connection;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 453
    iput-object p3, p0, Lorg/restlet/engine/connector/Connection;->socketAddress:Ljava/net/SocketAddress;

    .line 455
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 457
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 459
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->createReadableSelectionChannel()Lorg/restlet/engine/io/ReadableSelectionChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->readableSelectionChannel:Lorg/restlet/engine/io/ReadableSelectionChannel;

    .line 460
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->createWritableSelectionChannel()Lorg/restlet/engine/io/WritableSelectionChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->writableSelectionChannel:Lorg/restlet/engine/io/WritableSelectionChannel;

    .line 462
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Lorg/restlet/engine/io/ReadableTraceChannel;

    iget-object v1, p0, Lorg/restlet/engine/connector/Connection;->readableSelectionChannel:Lorg/restlet/engine/io/ReadableSelectionChannel;

    invoke-direct {v0, v1}, Lorg/restlet/engine/io/ReadableTraceChannel;-><init>(Lorg/restlet/engine/io/ReadableSelectionChannel;)V

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->readableSelectionChannel:Lorg/restlet/engine/io/ReadableSelectionChannel;

    .line 465
    new-instance v0, Lorg/restlet/engine/io/WritableTraceChannel;

    iget-object v1, p0, Lorg/restlet/engine/connector/Connection;->writableSelectionChannel:Lorg/restlet/engine/io/WritableSelectionChannel;

    invoke-direct {v0, v1}, Lorg/restlet/engine/io/WritableTraceChannel;-><init>(Lorg/restlet/engine/io/WritableSelectionChannel;)V

    iput-object v0, p0, Lorg/restlet/engine/connector/Connection;->writableSelectionChannel:Lorg/restlet/engine/io/WritableSelectionChannel;

    .line 470
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/restlet/util/SelectionRegistration;->setWakeupListener(Lorg/restlet/engine/io/WakeupListener;)V

    .line 471
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/OutboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/restlet/util/SelectionRegistration;->setWakeupListener(Lorg/restlet/engine/io/WakeupListener;)V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->onActivity()V

    .line 475
    return-void

    .line 457
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p0}, Lorg/restlet/engine/connector/ConnectionController;->register(Ljava/nio/channels/SelectableChannel;ILorg/restlet/util/SelectionListener;)Lorg/restlet/util/SelectionRegistration;

    move-result-object v0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 483
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->OPEN:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/OutboundWay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClientSide()Z
    .locals 1

    .prologue
    .line 494
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->isClientSide()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 503
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/OutboundWay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 512
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-boolean v0, p0, Lorg/restlet/engine/connector/Connection;->persistent:Z

    return v0
.end method

.method public isPipelining()Z
    .locals 1

    .prologue
    .line 521
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iget-boolean v0, p0, Lorg/restlet/engine/connector/Connection;->pipelining:Z

    return v0
.end method

.method protected isReady()Z
    .locals 2

    .prologue
    .line 530
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/OutboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServerSide()Z
    .locals 1

    .prologue
    .line 540
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->isServerSide()Z

    move-result v0

    return v0
.end method

.method public onActivity()V
    .locals 2

    .prologue
    .line 548
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/restlet/engine/connector/Connection;->lastActivity:J

    .line 549
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Throwable;Lorg/restlet/data/Status;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 563
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    :cond_0
    :goto_0
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p3, p2, p1}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 570
    .end local p3    # "status":Lorg/restlet/data/Status;
    .local v0, "status":Lorg/restlet/data/Status;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/engine/connector/InboundWay;->onError(Lorg/restlet/data/Status;)V

    .line 571
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/engine/connector/OutboundWay;->onError(Lorg/restlet/data/Status;)V

    .line 572
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    .line 575
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionHelper;->getController()Lorg/restlet/engine/connector/ConnectionController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ConnectionController;->wakeup()V

    .line 576
    return-void

    .line 565
    .end local v0    # "status":Lorg/restlet/data/Status;
    .restart local p3    # "status":Lorg/restlet/data/Status;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelected(Lorg/restlet/util/SelectionRegistration;)V
    .locals 7
    .param p1, "registration"    # Lorg/restlet/util/SelectionRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->onActivity()V

    .line 593
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    const/4 v3, 0x0

    .line 596
    .local v3, "trace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->isClientSide()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 597
    const-string v3, "Client "

    .line 602
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "connection (state | empty | registration): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 607
    .end local v3    # "trace":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_8

    .line 608
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection with no registration selected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 640
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 643
    .local v1, "readyFound":Z
    :cond_2
    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/io/Buffer;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/InboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v4

    sget-object v6, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-ne v4, v6, :cond_4

    .line 647
    const/4 v1, 0x1

    .line 649
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 650
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v6, "Entering into a connection READY loop"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 654
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/restlet/engine/connector/InboundWay;->onSelected(Lorg/restlet/util/SelectionRegistration;)V

    .line 657
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 659
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/OutboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/io/Buffer;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 660
    :try_start_3
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/OutboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v4

    sget-object v6, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    if-ne v4, v6, :cond_6

    .line 661
    const/4 v1, 0x1

    .line 663
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 664
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v6, "Entering into a connection READY loop"

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 668
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/OutboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/restlet/engine/connector/OutboundWay;->onSelected(Lorg/restlet/util/SelectionRegistration;)V

    .line 671
    :cond_6
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 672
    if-nez v1, :cond_2

    .line 677
    .end local v1    # "readyFound":Z
    :goto_2
    return-void

    .line 599
    .restart local v3    # "trace":Ljava/lang/String;
    :cond_7
    :try_start_4
    const-string v3, "Server "

    goto/16 :goto_0

    .line 610
    .end local v3    # "trace":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 611
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/InboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/io/Buffer;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 612
    :try_start_5
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/restlet/util/SelectionRegistration;->onSelected(I)V

    .line 614
    monitor-exit v5

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "Unexpected error detected. Closing the connection."

    sget-object v5, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p0, v4, v2, v5}, Lorg/restlet/engine/connector/Connection;->onError(Ljava/lang/String;Ljava/lang/Throwable;Lorg/restlet/data/Status;)V

    goto :goto_2

    .line 615
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_9
    :try_start_7
    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 616
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/OutboundWay;->getBuffer()Lorg/restlet/engine/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/io/Buffer;->getLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 617
    :try_start_8
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/OutboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->getReadyOperations()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/restlet/util/SelectionRegistration;->onSelected(I)V

    .line 619
    monitor-exit v5

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4

    .line 620
    :cond_a
    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->isConnectable()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 623
    :try_start_a
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 624
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->open()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 630
    :catch_1
    move-exception v0

    .line 631
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to establish a connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/restlet/data/Status;->CONNECTOR_ERROR_CONNECTION:Lorg/restlet/data/Status;

    invoke-virtual {p0, v4, v0, v5}, Lorg/restlet/engine/connector/Connection;->onError(Ljava/lang/String;Ljava/lang/Throwable;Lorg/restlet/data/Status;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 626
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to establish a connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lorg/restlet/data/Status;->CONNECTOR_ERROR_CONNECTION:Lorg/restlet/data/Status;

    invoke-virtual {p0, v4, v5, v6}, Lorg/restlet/engine/connector/Connection;->onError(Ljava/lang/String;Ljava/lang/Throwable;Lorg/restlet/data/Status;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1

    .line 657
    .restart local v1    # "readyFound":Z
    :catchall_2
    move-exception v4

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v4
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    .line 671
    :catchall_3
    move-exception v4

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
.end method

.method public onTimeOut()V
    .locals 3

    .prologue
    .line 683
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->isServerSide()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "server"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connection with \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" due to lack of activity during "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getMaxIoIdleTimeMs()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 691
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->onTimeOut()V

    .line 692
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/OutboundWay;->onTimeOut()V

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    .line 694
    return-void

    .line 684
    :cond_1
    const-string v0, "client"

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 702
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    sget-object v0, Lorg/restlet/engine/connector/ConnectionState;->OPEN:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/Connection;->setState(Lorg/restlet/engine/connector/ConnectionState;)V

    .line 703
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->updateState()Z

    .line 704
    return-void
.end method

.method public reuse(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "controller"    # Lorg/restlet/engine/connector/ConnectionController;
    .param p3, "socketAddress"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/restlet/engine/connector/Connection;->init(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)V

    .line 721
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 730
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iput-boolean p1, p0, Lorg/restlet/engine/connector/Connection;->persistent:Z

    .line 731
    return-void
.end method

.method public setPipelining(Z)V
    .locals 0
    .param p1, "pipelining"    # Z

    .prologue
    .line 740
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iput-boolean p1, p0, Lorg/restlet/engine/connector/Connection;->pipelining:Z

    .line 741
    return-void
.end method

.method public setRegistration(Lorg/restlet/util/SelectionRegistration;)V
    .locals 0
    .param p1, "registration"    # Lorg/restlet/util/SelectionRegistration;

    .prologue
    .line 752
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    iput-object p1, p0, Lorg/restlet/engine/connector/Connection;->registration:Lorg/restlet/util/SelectionRegistration;

    .line 753
    return-void
.end method

.method public setState(Lorg/restlet/engine/connector/ConnectionState;)V
    .locals 4
    .param p1, "state"    # Lorg/restlet/engine/connector/ConnectionState;

    .prologue
    .line 762
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 763
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state (old | new) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/restlet/engine/connector/Connection;->state:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 770
    :cond_0
    iput-object p1, p0, Lorg/restlet/engine/connector/Connection;->state:Lorg/restlet/engine/connector/ConnectionState;

    .line 772
    :cond_1
    return-void
.end method

.method protected shutdown(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V

    .line 783
    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V

    .line 784
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateState()Z
    .locals 7

    .prologue
    .line 797
    .local p0, "this":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    const/4 v2, 0x1

    .line 799
    .local v2, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v3

    sget-object v4, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    if-eq v3, v4, :cond_1

    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, "oldState":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/SelectionRegistration;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/InboundWay;->updateState()V

    .line 807
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/OutboundWay;->updateState()V

    .line 810
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/connector/InboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v4

    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getOutboundWay()Lorg/restlet/engine/connector/OutboundWay;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/connector/OutboundWay;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/util/SelectionRegistration;->getInterestOperations()I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/restlet/util/SelectionRegistration;->setInterestOperations(I)Z

    move-result v2

    .line 815
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 816
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getRegistration()Lorg/restlet/util/SelectionRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/SelectionRegistration;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "newState":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 819
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old connection NIO interest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New connection NIO interest: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 827
    .end local v0    # "newState":Ljava/lang/String;
    .end local v1    # "oldState":Ljava/lang/String;
    :cond_1
    return v2
.end method
