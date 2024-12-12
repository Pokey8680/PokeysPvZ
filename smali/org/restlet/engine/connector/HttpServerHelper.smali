.class public Lorg/restlet/engine/connector/HttpServerHelper;
.super Lorg/restlet/engine/connector/ServerConnectionHelper;
.source "HttpServerHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Server;)V
    .locals 1
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 58
    sget-object v0, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    invoke-direct {p0, p1, v0}, Lorg/restlet/engine/connector/HttpServerHelper;-><init>(Lorg/restlet/Server;Lorg/restlet/data/Protocol;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Server;Lorg/restlet/data/Protocol;)V
    .locals 1
    .param p1, "server"    # Lorg/restlet/Server;
    .param p2, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/restlet/engine/connector/ServerConnectionHelper;-><init>(Lorg/restlet/Server;)V

    .line 71
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method


# virtual methods
.method protected canHandle(Lorg/restlet/engine/connector/Connection;Lorg/restlet/Response;)Z
    .locals 8
    .param p2, "response"    # Lorg/restlet/Response;
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

    .prologue
    .line 77
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    const/4 v5, 0x0

    .line 81
    .local v5, "result":Z
    invoke-virtual {p1}, Lorg/restlet/engine/connector/Connection;->getInboundWay()Lorg/restlet/engine/connector/InboundWay;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/connector/HttpServerInboundWay;

    .line 83
    .local v1, "inboundWay":Lorg/restlet/engine/connector/HttpServerInboundWay;
    invoke-virtual {v1}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/Response;

    .line 85
    .local v4, "nextResponse":Lorg/restlet/Response;
    if-eqz v4, :cond_4

    .line 86
    invoke-virtual {v4}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v6

    invoke-virtual {p2}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 87
    const/4 v5, 0x1

    .line 107
    :cond_0
    return v5

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, "found":Z
    invoke-virtual {v1}, Lorg/restlet/engine/connector/HttpServerInboundWay;->getMessages()Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/Response;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/Response;

    .line 94
    .local v3, "next":Lorg/restlet/Response;
    invoke-virtual {v3}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v6

    invoke-virtual {p2}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v7

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    .line 95
    :goto_1
    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    .end local v3    # "next":Lorg/restlet/Response;
    :cond_3
    if-nez v0, :cond_0

    .line 98
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Can\'t find the parent request in the list of inbound messages."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    .end local v0    # "found":Z
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/Response;>;"
    :cond_4
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Can\'t find the parent request in the empty list of inbound messages."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public createInboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/InboundWay;
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;I)",
            "Lorg/restlet/engine/connector/InboundWay;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    new-instance v0, Lorg/restlet/engine/connector/HttpServerInboundWay;

    invoke-direct {v0, p1, p2}, Lorg/restlet/engine/connector/HttpServerInboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    return-object v0
.end method

.method public createOutboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/OutboundWay;
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;I)",
            "Lorg/restlet/engine/connector/OutboundWay;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    new-instance v0, Lorg/restlet/engine/connector/HttpServerOutboundWay;

    invoke-direct {v0, p1, p2}, Lorg/restlet/engine/connector/HttpServerOutboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    return-object v0
.end method

.method protected createRequest(Lorg/restlet/engine/connector/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/Request;
    .locals 6
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "resourceUri"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
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

    .prologue
    .line 125
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    new-instance v0, Lorg/restlet/engine/connector/HttpInboundRequest;

    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpServerHelper;->getContext()Lorg/restlet/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/engine/connector/HttpInboundRequest;-><init>(Lorg/restlet/Context;Lorg/restlet/engine/connector/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
