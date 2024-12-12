.class public Lorg/restlet/engine/connector/ServerConnectionController;
.super Lorg/restlet/engine/connector/ConnectionController;
.source "ServerConnectionController.java"


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/ServerConnectionHelper;)V
    .locals 2
    .param p1, "helper"    # Lorg/restlet/engine/connector/ServerConnectionHelper;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/restlet/engine/connector/ConnectionController;-><init>(Lorg/restlet/engine/connector/ConnectionHelper;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/engine/connector/ServerConnectionController;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 70
    return-void
.end method


# virtual methods
.method public await()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/restlet/engine/connector/ServerConnectionController;->latch:Ljava/util/concurrent/CountDownLatch;

    sget v1, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "The calling thread timed out while waiting for the controller to be ready to accept connections."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionController;->doInit()V

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v1, p0, Lorg/restlet/engine/connector/ServerConnectionController;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 171
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unexpected error while registering an NIO selection key"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic getHelper()Lorg/restlet/engine/connector/ConnectionHelper;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lorg/restlet/engine/connector/ConnectionController;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/ServerConnectionHelper;

    return-object v0
.end method

.method protected onSelected(Ljava/nio/channels/SelectionKey;)V
    .locals 9
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 99
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ConnectionController;->onSelected(Ljava/nio/channels/SelectionKey;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->isOverloaded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v5

    .line 106
    .local v5, "socketChannel":Ljava/nio/channels/SocketChannel;
    if-eqz v5, :cond_0

    .line 107
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 108
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/engine/connector/ServerConnectionHelper;->configure(Ljava/net/Socket;)V

    .line 110
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 112
    .local v2, "connectionsCount":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getMaxTotalConnections()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getMaxTotalConnections()I

    move-result v6

    if-gt v2, v6, :cond_3

    .line 115
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v7

    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v5, p0, v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->checkout(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;

    move-result-object v1

    .line 120
    .local v1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->open()V

    .line 121
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection from \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" accepted. New count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getConnections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 139
    .end local v1    # "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    .end local v2    # "connectionsCount":I
    .end local v5    # "socketChannel":Ljava/nio/channels/SocketChannel;
    :catch_0
    move-exception v3

    .line 140
    .local v3, "ex":Ljava/nio/channels/ClosedByInterruptException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "ServerSocket channel was closed by interrupt"

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    throw v3

    .line 133
    .end local v3    # "ex":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v2    # "connectionsCount":I
    .restart local v5    # "socketChannel":Ljava/nio/channels/SocketChannel;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/nio/channels/SocketChannel;->close()V

    .line 134
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    const-string v7, "Maximum number of concurrent connections reached. New connection rejected."

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 143
    .end local v2    # "connectionsCount":I
    .end local v5    # "socketChannel":Ljava/nio/channels/SocketChannel;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "ace":Ljava/nio/channels/AsynchronousCloseException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "The server socket was closed"

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 146
    .end local v0    # "ace":Ljava/nio/channels/AsynchronousCloseException;
    :catch_2
    move-exception v4

    .line 147
    .local v4, "se":Ljava/net/SocketException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "The server socket was closed"

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "se":Ljava/net/SocketException;
    :catch_3
    move-exception v3

    .line 150
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerConnectionController;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Unexpected error while accepting new connection"

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
