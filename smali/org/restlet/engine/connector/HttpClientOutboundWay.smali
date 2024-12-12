.class public Lorg/restlet/engine/connector/HttpClientOutboundWay;
.super Lorg/restlet/engine/connector/ClientOutboundWay;
.source "HttpClientOutboundWay.java"


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
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/ClientOutboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/connector/HttpClientOutboundWay;->messages:Ljava/util/Queue;

    .line 65
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->clear()V

    .line 70
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpClientOutboundWay;->messages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 71
    return-void
.end method

.method public getLoadScore()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

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
    .line 84
    iget-object v0, p0, Lorg/restlet/engine/connector/HttpClientOutboundWay;->messages:Ljava/util/Queue;

    return-object v0
.end method

.method protected handle(Lorg/restlet/Response;)V
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

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
    .line 99
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

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

    .line 100
    .local v1, "rsp":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lorg/restlet/engine/connector/ConnectionHelper;->onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 106
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ClientOutboundWay;->onError(Lorg/restlet/data/Status;)V

    .line 107
    return-void
.end method

.method public onHeadersCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    .line 113
    .local v1, "message":Lorg/restlet/Response;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    .line 116
    .local v2, "request":Lorg/restlet/Request;
    invoke-virtual {v2}, Lorg/restlet/Request;->isExpectingResponse()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v3

    check-cast v3, Lorg/restlet/engine/connector/HttpClientInboundWay;

    invoke-virtual {v3}, Lorg/restlet/engine/connector/HttpClientInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    .line 119
    .local v0, "inboundMessages":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/restlet/Response;>;"
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v3

    sget-object v4, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {v3, v4}, Lorg/restlet/engine/connector/InboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 125
    .end local v0    # "inboundMessages":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/restlet/Response;>;"
    .end local v2    # "request":Lorg/restlet/Request;
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->onHeadersCompleted()V

    .line 126
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
    .line 130
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    .line 132
    .local v0, "message":Lorg/restlet/Response;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 134
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/ClientOutboundWay;->onMessageCompleted(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public onTimeOut()V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

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

    .line 141
    .local v1, "rsp":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3, v1}, Lorg/restlet/engine/connector/ConnectionHelper;->onOutboundError(Lorg/restlet/data/Status;Lorg/restlet/Response;)V

    goto :goto_0

    .line 148
    .end local v1    # "rsp":Lorg/restlet/Response;
    :cond_1
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->onTimeOut()V

    .line 149
    return-void
.end method

.method public updateState()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/InboundWay;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Response;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/HttpClientOutboundWay;->setMessage(Lorg/restlet/Response;)V

    .line 159
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->updateState()V

    .line 160
    return-void
.end method
