.class public Lorg/restlet/engine/connector/HttpClientHelper;
.super Lorg/restlet/engine/connector/ClientConnectionHelper;
.source "HttpClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 2
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/restlet/engine/connector/ClientConnectionHelper;-><init>(Lorg/restlet/Client;)V

    .line 54
    invoke-virtual {p0}, Lorg/restlet/engine/connector/HttpClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->HTTP:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public createInboundWay(Lorg/restlet/engine/connector/Connection;I)Lorg/restlet/engine/connector/InboundWay;
    .locals 1
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Client;",
            ">;I)",
            "Lorg/restlet/engine/connector/InboundWay;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    new-instance v0, Lorg/restlet/engine/connector/HttpClientInboundWay;

    invoke-direct {v0, p1, p2}, Lorg/restlet/engine/connector/HttpClientInboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

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
            "Lorg/restlet/Client;",
            ">;I)",
            "Lorg/restlet/engine/connector/OutboundWay;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "connection":Lorg/restlet/engine/connector/Connection;, "Lorg/restlet/engine/connector/Connection<Lorg/restlet/Client;>;"
    new-instance v0, Lorg/restlet/engine/connector/HttpClientOutboundWay;

    invoke-direct {v0, p1, p2}, Lorg/restlet/engine/connector/HttpClientOutboundWay;-><init>(Lorg/restlet/engine/connector/Connection;I)V

    return-object v0
.end method
