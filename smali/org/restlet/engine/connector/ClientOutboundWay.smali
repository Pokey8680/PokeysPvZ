.class public abstract Lorg/restlet/engine/connector/ClientOutboundWay;
.super Lorg/restlet/engine/connector/OutboundWay;
.source "ClientOutboundWay.java"


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
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/connector/OutboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected addHeaders(Lorg/restlet/util/Series;)V
    .locals 2
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
    .line 67
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    .line 68
    .local v0, "request":Lorg/restlet/Request;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ClientOutboundWay;->addGeneralHeaders(Lorg/restlet/util/Series;)V

    .line 69
    invoke-virtual {v0}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/restlet/engine/connector/ClientOutboundWay;->addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/restlet/engine/connector/ClientOutboundWay;->addRequestHeaders(Lorg/restlet/util/Series;)V

    .line 74
    return-void
.end method

.method protected addRequestHeaders(Lorg/restlet/util/Series;)V
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
    .line 83
    .local p1, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/header/HeaderUtils;->addRequestHeaders(Lorg/restlet/Request;Lorg/restlet/util/Series;)V

    .line 84
    return-void
.end method

.method public bridge synthetic getActualMessage()Lorg/restlet/Message;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getActualMessage()Lorg/restlet/Request;

    move-result-object v0

    return-object v0
.end method

.method public getActualMessage()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    goto :goto_0
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
    .line 94
    invoke-super {p0}, Lorg/restlet/engine/connector/OutboundWay;->getConnection()Lorg/restlet/engine/connector/Connection;

    move-result-object v0

    return-object v0
.end method

.method public onMessageCompleted(Z)V
    .locals 3
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v0

    .line 101
    .local v0, "message":Lorg/restlet/Response;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    .line 104
    .local v1, "request":Lorg/restlet/Request;
    invoke-virtual {v1}, Lorg/restlet/Request;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v1}, Lorg/restlet/Request;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 109
    .end local v1    # "request":Lorg/restlet/Request;
    :cond_0
    invoke-super {p0, p1}, Lorg/restlet/engine/connector/OutboundWay;->onMessageCompleted(Z)V

    .line 110
    return-void
.end method

.method protected writeStartLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 114
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getMessage()Lorg/restlet/Response;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    .line 115
    .local v0, "request":Lorg/restlet/Request;
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getHelper()Lorg/restlet/engine/connector/ConnectionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/connector/ConnectionHelper;->isProxying()Z

    move-result v3

    invoke-static {v2, v3, v0}, Lorg/restlet/engine/util/ReferenceUtils;->format(Lorg/restlet/data/Reference;ZLorg/restlet/Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getVersion(Lorg/restlet/Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Lorg/restlet/engine/connector/ClientOutboundWay;->getLineBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    return-void
.end method
