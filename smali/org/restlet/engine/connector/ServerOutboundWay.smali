.class public abstract Lorg/restlet/engine/connector/ServerOutboundWay;
.super Lorg/restlet/engine/connector/OutboundWay;
.source "ServerOutboundWay.java"


# direct methods
.method public constructor <init>(Lorg/restlet/engine/connector/Connection;I)V
    .locals 0
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
    .line 65
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Server;>;"
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/OutboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected addHeaders(Lorg/restlet/util/Series;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    .line 71
    .local v1, "response":Lorg/restlet/Response;
    invoke-virtual {v1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    .line 74
    .local v0, "request":Lorg/restlet/Request;
    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 76
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responses with a 205 (Reset content) status can\'t have an entity. Ignoring the entity for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v6}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ServerOutboundWay;->addGeneralHeaders(Lorg/restlet/util/Series;)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ServerOutboundWay;->addResponseHeaders(Lorg/restlet/util/Series;)V

    .line 99
    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/restlet/engine/connector/ServerOutboundWay;->addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 102
    invoke-virtual {v1}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getAvailableSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A response with an unavailable and potentially non empty entity was returned. Ignoring the entity for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual {v1, v6}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 115
    :cond_2
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 118
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A response with a 200 (Ok) status should have an entity. Make sure that resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" returns one or set the status to 204 (No content)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 131
    :cond_3
    :goto_1
    sget-object v2, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {v1, v6}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 134
    :cond_4
    return-void

    .line 81
    :cond_5
    sget-object v2, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 83
    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/restlet/engine/header/HeaderUtils;->addNotModifiedEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 85
    invoke-virtual {v1, v6}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responses with an informational (1xx) status can\'t have an entity. Ignoring the entity for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v6}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responses with a 204 (No content) status generally don\'t have an entity available. Only adding entity headers for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, v6}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_1
.end method

.method protected addResponseHeaders(Lorg/restlet/util/Series;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/header/HeaderUtils;->addResponseHeaders(Lorg/restlet/Response;Lorg/restlet/util/Series;)V

    .line 144
    return-void
.end method

.method public bridge synthetic getActualMessage()Lorg/restlet/Message;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getActualMessage()Lorg/restlet/Response;

    move-result-object v0

    return-object v0
.end method

.method public getActualMessage()Lorg/restlet/Response;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

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
    .line 154
    invoke-super {p0}, Lorg/restlet/engine/connector/OutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    return-object v0
.end method

.method public onMessageCompleted(Z)V
    .locals 5
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 164
    .local v1, "requestEntity":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Automatically exhausting the request entity as it is still available after writing the final response."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->exhaust()J

    .line 178
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "requestEntity":Lorg/restlet/representation/Representation;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/connector/Connection;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/restlet/engine/connector/Connection;->close(Z)V

    .line 194
    :cond_3
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/OutboundWay;->onMessageCompleted(Z)V

    .line 195
    return-void

    .line 179
    .restart local v1    # "requestEntity":Lorg/restlet/representation/Representation;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to automatically exhaust the request entity."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected writeStartLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x20

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-static {v1}, Lorg/restlet/engine/connector/ServerOutboundWay;->getVersion(Lorg/restlet/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Status;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ServerOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
