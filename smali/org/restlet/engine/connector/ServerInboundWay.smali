.class public abstract Lorg/restlet/engine/connector/ServerInboundWay;
.super Lorg/restlet/engine/connector/InboundWay;
.source "ServerInboundWay.java"


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/Connection;I)V
    .locals 0
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/InboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected abstract createResponse(Lorg/restlet/Request;)Lorg/restlet/Response;
.end method

.method public getActualMessage()Lorg/restlet/Message;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    return-object v0
.end method

.method public getConnection()Lorg/restlet/engine/connector/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHelper()Lorg/restlet/engine/connector/ConnectionHelper;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/ServerConnectionHelper;

    return-object v0
.end method

.method protected hasIoInterest()Z
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getIoState()Lorg/restlet/engine/io/IoState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->isPipelining()Z

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

.method protected onHeadersCompleted()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->onHeadersCompleted()V

    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/connector/InboundRequest;

    .line 102
    .local v1, "request":Lorg/restlet/engine/connector/InboundRequest;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/restlet/engine/connector/InboundRequest;->setHeaders(Lorg/restlet/util/Series;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    sget-object v3, Lorg/restlet/engine/connector/ConnectionState;->CLOSING:Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {v2, v3}, Lorg/restlet/engine/connector/Connection;->setState(Lorg/restlet/engine/connector/ConnectionState;)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/ServerInboundWay;->createEntity(Lorg/restlet/util/Series;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 114
    .local v0, "entity":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 117
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v2

    check-cast v2, Lorg/restlet/Server;

    invoke-virtual {v2}, Lorg/restlet/Server;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/restlet/data/ServerInfo;->setAddress(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/ConnectionHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v2

    check-cast v2, Lorg/restlet/Server;

    invoke-virtual {v2}, Lorg/restlet/Server;->getPort()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/restlet/data/ServerInfo;->setPort(I)V

    .line 123
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/ServerInboundWay;->onReceived(Lorg/restlet/Response;)V

    .line 124
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
    .line 133
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ServerConnectionHelper;->getInboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/ServerInboundWay;->onMessageCompleted(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method protected readStartLine()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, "requestMethod":Ljava/lang/String;
    const/4 v5, 0x0

    .line 148
    .local v5, "requestUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 150
    .local v2, "protocol":Ljava/lang/String;
    const/4 v0, 0x0

    .line 151
    .local v0, "i":I
    const/4 v8, 0x0

    .line 152
    .local v8, "start":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 155
    .local v7, "size":I
    if-nez v7, :cond_0

    .line 215
    :goto_0
    return-void

    .line 159
    :cond_0
    move v0, v8

    :goto_1
    if-nez v4, :cond_2

    if-ge v0, v7, :cond_2

    .line 160
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 162
    .local v1, "next":C
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 163
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 164
    add-int/lit8 v8, v0, 0x1

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v1    # "next":C
    :cond_2
    if-eqz v4, :cond_3

    if-ne v0, v7, :cond_4

    .line 169
    :cond_3
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Unable to parse the request method. End of line reached too early."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 174
    :cond_4
    move v0, v8

    :goto_2
    if-nez v5, :cond_6

    if-ge v0, v7, :cond_6

    .line 175
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 177
    .restart local v1    # "next":C
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 178
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 179
    add-int/lit8 v8, v0, 0x1

    .line 174
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    .end local v1    # "next":C
    :cond_6
    if-ne v0, v7, :cond_7

    .line 184
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Unable to parse the request URI. End of line reached too early."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 188
    :cond_7
    if-eqz v5, :cond_8

    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 189
    :cond_8
    const-string v5, "/"

    .line 193
    :cond_9
    move v0, v8

    :goto_3
    if-nez v2, :cond_a

    if-ge v0, v7, :cond_a

    .line 194
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 193
    .restart local v1    # "next":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 197
    .end local v1    # "next":C
    :cond_a
    if-ne v0, v7, :cond_b

    .line 198
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 199
    add-int/lit8 v8, v0, 0x1

    .line 202
    :cond_b
    if-nez v2, :cond_c

    .line 203
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Unable to parse the protocol version. End of line reached too early."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 208
    :cond_c
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getHelper()Lorg/restlet/engine/connector/ServerConnectionHelper;

    move-result-object v9

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v10

    invoke-virtual {v9, v10, v4, v5, v2}, Lorg/restlet/engine/connector/ServerConnectionHelper;->createRequest(Lorg/restlet/engine/connector/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/Request;

    move-result-object v3

    .line 210
    .local v3, "request":Lorg/restlet/Request;
    invoke-virtual {p0, v3}, Lorg/restlet/engine/connector/ServerInboundWay;->createResponse(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v6

    .line 211
    .local v6, "response":Lorg/restlet/Response;
    invoke-virtual {p0, v6}, Lorg/restlet/engine/connector/ServerInboundWay;->setMessage(Lorg/restlet/Response;)V

    .line 212
    sget-object v9, Lorg/restlet/engine/connector/MessageState;->HEADERS:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v9}, Lorg/restlet/engine/connector/ServerInboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 213
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->clearLineBuilder()V

    goto/16 :goto_0
.end method

.method public updateState()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerInboundWay;->getMessageState()Lorg/restlet/engine/connector/MessageState;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/connector/MessageState;->IDLE:Lorg/restlet/engine/connector/MessageState;

    if-ne v0, v1, :cond_0

    .line 220
    sget-object v0, Lorg/restlet/engine/connector/MessageState;->START:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/ServerInboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 224
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->updateState()V

    .line 225
    return-void
.end method
