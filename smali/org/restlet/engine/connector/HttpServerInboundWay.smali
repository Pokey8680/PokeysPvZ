.class public Lorg/restlet/engine/connector/HttpServerInboundWay;
.super Lorg/restlet/engine/connector/ServerInboundWay;
.source "HttpServerInboundWay.java"


# instance fields
.field private final messages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/Connection;I)V
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/ServerInboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpServerInboundWay;->messages:Ljava/util/Queue;

    .line 66
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->clear()V

    .line 71
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpServerInboundWay;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 72
    return-void
.end method

.method protected createResponse(Lorg/restlet/Request;)Lorg/restlet/Response;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 76
    new-instance v0, Lorg/restlet/Response;

    invoke-direct {v0, p1}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    return-object v0
.end method

.method public getLoadScore()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpServerInboundWay;->messages:Ljava/util/Queue;

    return-object v0
.end method

.method protected hasIoInterest()Z
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->hasIoInterest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Lorg/restlet/data/Status;)V
    .locals 3
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/Response;

    .line 111
    .local v1, "rsp":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 117
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ServerInboundWay;->onError(Lorg/restlet/data/Status;)V

    .line 118
    return-void
.end method

.method protected onReceived(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "message"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isExpectingResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ServerInboundWay;->onReceived(Lorg/restlet/Response;)V

    .line 129
    return-void
.end method

.method public onTimeOut()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/Response;

    .line 134
    .local v1, "rsp":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3, v1}, Lorg/restlet/engine/connector/ServerConnectionHelper;->onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 141
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->onTimeOut()V

    .line 142
    return-void
.end method
