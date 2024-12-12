.class public Lorg/restlet/engine/connector/HttpClientInboundWay;
.super Lorg/restlet/engine/connector/ClientInboundWay;
.source "HttpClientInboundWay.java"


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
            "Lorg/restlet/Client;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/ClientInboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpClientInboundWay;->messages:Ljava/util/Queue;

    .line 67
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->clear()V

    .line 72
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpClientInboundWay;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 73
    return-void
.end method

.method protected createResponse(Lorg/restlet/data/Status;)Lorg/restlet/Response;
    .locals 3
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "result":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Response;

    .line 80
    .local v0, "finalResponse":Lorg/restlet/Response;
    invoke-virtual {p1}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Lorg/restlet/Response;

    .end local v1    # "result":Lorg/restlet/Response;
    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 86
    .restart local v1    # "result":Lorg/restlet/Response;
    :goto_0
    return-object v1

    .line 83
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getLoadScore()I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

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
    .line 100
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpClientInboundWay;->messages:Ljava/util/Queue;

    return-object v0
.end method

.method protected hasIoInterest()Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->BODY:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

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
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

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
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getHelper()Lorg/restlet/engine/connector/ClientConnectionHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 130
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ClientInboundWay;->onError(Lorg/restlet/data/Status;)V

    .line 131
    return-void
.end method

.method public onMessageCompleted(Z)V
    .locals 2
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 118
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ClientInboundWay;->onMessageCompleted(Z)V

    .line 119
    return-void
.end method

.method public onTimeOut()V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

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
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getHelper()Lorg/restlet/engine/connector/ClientConnectionHelper;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3, v1}, Lorg/restlet/engine/connector/ClientConnectionHelper;->onInboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 143
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->onTimeOut()V

    .line 144
    return-void
.end method
