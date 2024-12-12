.class public Lorg/restlet/engine/connector/ConnectionPool;
.super Lorg/restlet/engine/util/Pool;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Connector;",
        ">",
        "Lorg/restlet/engine/util/Pool",
        "<",
        "Lorg/restlet/engine/connector/Connection",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private helper:Lorg/restlet/engine/connector/ConnectionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/ConnectionHelper;I)V
    .locals 0
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/ConnectionHelper",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionPool;, "Lorg/restlet/engine/connector/ConnectionPool<TT;>;"
    .local p1, "helper":Lorg/restlet/engine/connector/ConnectionHelper;, "Lorg/restlet/engine/connector/ConnectionHelper<TT;>;"
    invoke-direct {p0}, Lorg/restlet/engine/util/Pool;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/restlet/engine/connector/ConnectionPool;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    .line 63
    invoke-virtual {p0, p2}, Lorg/restlet/engine/connector/ConnectionPool;->preCreate(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected bridge synthetic clear(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionPool;, "Lorg/restlet/engine/connector/ConnectionPool<TT;>;"
    check-cast p1, Lorg/restlet/engine/connector/Connection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ConnectionPool;->clear(Lorg/restlet/engine/connector/Connection;)V

    return-void
.end method

.method protected clear(Lorg/restlet/engine/connector/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionPool;, "Lorg/restlet/engine/connector/ConnectionPool<TT;>;"
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->clear()V

    .line 69
    return-void
.end method

.method protected bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionPool;, "Lorg/restlet/engine/connector/ConnectionPool<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ConnectionPool;->createObject()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lorg/restlet/engine/connector/Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/Connection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/restlet/engine/connector/ConnectionPool;, "Lorg/restlet/engine/connector/ConnectionPool<TT;>;"
    const/4 v1, 0x0

    .line 76
    .local v1, "result":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/restlet/engine/connector/ConnectionPool;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/restlet/engine/connector/ConnectionHelper;->createConnection(Ljava/nio/channels/SocketChannel;Lorg/restlet/engine/connector/ConnectionController;Ljava/net/InetSocketAddress;)Lorg/restlet/engine/connector/Connection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/restlet/engine/connector/ConnectionPool;->helper:Lorg/restlet/engine/connector/ConnectionHelper;

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to create a pool object"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
