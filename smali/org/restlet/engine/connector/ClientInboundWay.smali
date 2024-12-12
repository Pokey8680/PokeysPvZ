.class public abstract Lorg/restlet/engine/connector/ClientInboundWay;
.super Lorg/restlet/engine/connector/InboundWay;
.source "ClientInboundWay.java"


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
    .line 67
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<*>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/InboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected copyResponseTransportHeaders(Lorg/restlet/util/Series;Lorg/restlet/Response;)V
    .locals 0
    .param p2, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;",
            "Lorg/restlet/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-static {p1, p2}, Lorg/restlet/engine/header/HeaderUtils;->copyResponseTransportHeaders(Lorg/restlet/util/Series;Lorg/restlet/Response;)V

    .line 81
    return-void
.end method

.method protected abstract createResponse(Lorg/restlet/data/Status;)Lorg/restlet/Response;
.end method

.method protected createStatus(I)Lorg/restlet/data/Status;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 100
    invoke-static {p1}, Lorg/restlet/data/Status;->valueOf(I)Lorg/restlet/data/Status;

    move-result-object v0

    return-object v0
.end method

.method public getActualMessage()Lorg/restlet/Message;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

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
            "Lorg/restlet/Client;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getHelper()Lorg/restlet/engine/connector/ClientConnectionHelper;
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/ClientConnectionHelper;

    return-object v0
.end method

.method public bridge synthetic getHelper()Lorg/restlet/engine/connector/ConnectionHelper;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHelper()Lorg/restlet/engine/connector/ClientConnectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public getInterestOperations()I
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/connector/Connection;->getState()Lorg/restlet/engine/connector/ConnectionState;

    move-result-object v1

    sget-object v2, Lorg/restlet/engine/connector/ConnectionState;->OPENING:Lorg/restlet/engine/connector/ConnectionState;

    if-ne v1, v2, :cond_0

    .line 124
    const/16 v0, 0x8

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->getInterestOperations()I

    move-result v0

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
    .line 134
    invoke-super {p0}, Lorg/restlet/engine/connector/InboundWay;->onHeadersCompleted()V

    .line 137
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/connector/ClientInboundWay;->createEntity(Lorg/restlet/util/Series;)Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/restlet/engine/connector/ClientInboundWay;->copyResponseTransportHeaders(Lorg/restlet/util/Series;Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    const-string v2, "org.restlet.http.headers"

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/connector/ClientInboundWay;->onReceived(Lorg/restlet/Response;)V

    .line 153
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error while parsing the headers"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 158
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/Connection;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    .line 163
    :cond_1
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/InboundWay;->onMessageCompleted(Z)V

    .line 164
    return-void
.end method

.method protected onReceived(Lorg/restlet/Response;)V
    .locals 2
    .param p1, "message"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getHelper()Lorg/restlet/engine/connector/ClientConnectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/connector/ClientConnectionHelper;->getInboundMessages()Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/ClientInboundWay;->setIoState(Lorg/restlet/engine/io/IoState;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/connector/ClientInboundWay;->onMessageCompleted(Z)V

    goto :goto_0
.end method

.method protected readStartLine()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 182
    const/4 v9, 0x0

    .line 183
    .local v9, "version":Ljava/lang/String;
    const/4 v8, -0x1

    .line 184
    .local v8, "statusCode":I
    const/4 v3, 0x0

    .line 186
    .local v3, "reasonPhrase":Ljava/lang/String;
    const/4 v1, 0x0

    .line 187
    .local v1, "i":I
    const/4 v6, 0x0

    .line 188
    .local v6, "start":I
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 191
    .local v5, "size":I
    if-nez v5, :cond_0

    .line 260
    :goto_0
    return-void

    .line 195
    :cond_0
    move v1, v6

    :goto_1
    if-nez v9, :cond_2

    if-ge v1, v5, :cond_2

    .line 196
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 198
    .local v2, "next":C
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 200
    add-int/lit8 v6, v1, 0x1

    .line 195
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 205
    .end local v2    # "next":C
    :cond_2
    move v1, v6

    :goto_2
    if-ne v8, v11, :cond_4

    if-ge v1, v5, :cond_4

    .line 206
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 208
    .restart local v2    # "next":C
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 219
    add-int/lit8 v6, v1, 0x1

    .line 205
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to parse the status code. Non numeric value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 223
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "next":C
    :cond_4
    if-ne v8, v11, :cond_5

    .line 224
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Unable to parse the status code. End of line reached too early."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 229
    :cond_5
    move v1, v6

    :goto_3
    if-nez v3, :cond_6

    if-ge v1, v5, :cond_6

    .line 230
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 229
    .restart local v2    # "next":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 233
    .end local v2    # "next":C
    :cond_6
    if-ne v1, v5, :cond_7

    .line 234
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 235
    add-int/lit8 v6, v1, 0x1

    .line 238
    :cond_7
    if-nez v3, :cond_8

    .line 239
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Unable to parse the reason phrase. End of line reached too early."

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 244
    :cond_8
    invoke-virtual {p0, v8}, Lorg/restlet/engine/connector/ClientInboundWay;->createStatus(I)Lorg/restlet/data/Status;

    move-result-object v7

    .line 245
    .local v7, "status":Lorg/restlet/data/Status;
    invoke-virtual {p0, v7}, Lorg/restlet/engine/connector/ClientInboundWay;->createResponse(Lorg/restlet/data/Status;)Lorg/restlet/Response;

    move-result-object v4

    .line 248
    .local v4, "response":Lorg/restlet/Response;
    invoke-virtual {v4, v7, v3}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v10

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/restlet/data/ServerInfo;->setAddress(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v10

    const-string v11, "Restlet-Framework/2.1.6"

    invoke-virtual {v10, v11}, Lorg/restlet/data/ServerInfo;->setAgent(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v4}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v10

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v11

    invoke-virtual {v11}, Lorg/restlet/engine/connector/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/Socket;->getPort()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/restlet/data/ServerInfo;->setPort(I)V

    .line 256
    invoke-virtual {p0, v4}, Lorg/restlet/engine/connector/ClientInboundWay;->setMessage(Lorg/restlet/Response;)V

    .line 257
    sget-object v10, Lorg/restlet/engine/connector/MessageState;->HEADERS:Lorg/restlet/engine/connector/MessageState;

    invoke-virtual {p0, v10}, Lorg/restlet/engine/connector/ClientInboundWay;->setMessageState(Lorg/restlet/engine/connector/MessageState;)V

    .line 258
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientInboundWay;->clearLineBuilder()V

    goto/16 :goto_0
.end method
