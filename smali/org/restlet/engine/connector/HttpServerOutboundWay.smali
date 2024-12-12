.class public Lorg/restlet/engine/connector/HttpServerOutboundWay;
.super Lorg/restlet/engine/connector/ServerOutboundWay;
.source "HttpServerOutboundWay.java"


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
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/ServerOutboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpServerOutboundWay;->messages:Ljava/util/Queue;

    .line 66
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->clear()V

    .line 71
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpServerOutboundWay;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 72
    return-void
.end method

.method public getLoadScore()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

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
    .line 85
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpServerOutboundWay;->messages:Ljava/util/Queue;

    return-object v0
.end method

.method protected handle(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

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
    .line 123
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

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

    .line 124
    .local v1, "rsp":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/restlet/engine/connector/ConnectionHelper;->onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 130
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ServerOutboundWay;->onError(Lorg/restlet/data/Status;)V

    .line 131
    return-void
.end method

.method public onMessageCompleted(Z)V
    .locals 4
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v2

    check-cast v2, Lorg/restlet/engine/connector/HttpServerInboundWay;

    invoke-virtual {v2}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v1

    .line 107
    .local v1, "inboundMessages":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/restlet/Response;>;"
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Response;

    .line 109
    .local v0, "inboundMessage":Lorg/restlet/Response;
    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 114
    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 118
    .end local v0    # "inboundMessage":Lorg/restlet/Response;
    .end local v1    # "inboundMessages":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/restlet/Response;>;"
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ServerOutboundWay;->onMessageCompleted(Z)V

    .line 119
    return-void
.end method

.method public onTimeOut()V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

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

    .line 136
    .local v1, "rsp":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3, v1}, Lorg/restlet/engine/connector/ConnectionHelper;->onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 143
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->onTimeOut()V

    .line 144
    return-void
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Response;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/HttpServerOutboundWay;->setMessage(Lorg/restlet/Response;)V

    .line 153
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->updateState()V

    .line 154
    return-void
.end method
