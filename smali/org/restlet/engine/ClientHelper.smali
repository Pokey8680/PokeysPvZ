.class public Lorg/restlet/engine/ClientHelper;
.super Lorg/restlet/engine/ConnectorHelper;
.source "ClientHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/ConnectorHelper",
        "<",
        "Lorg/restlet/Client;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 0
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/restlet/engine/ConnectorHelper;-><init>(Lorg/restlet/Connector;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getSocketConnectTimeoutMs()I
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/restlet/engine/ClientHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    check-cast v1, Lorg/restlet/Client;

    invoke-virtual {v1}, Lorg/restlet/Client;->getConnectTimeout()I

    move-result v0

    .line 80
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/ClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/util/Series;->getNames()Ljava/util/Set;

    move-result-object v1

    const-string v2, "socketConnectTimeoutMs"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/restlet/engine/ClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "socketConnectTimeoutMs"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    :cond_0
    return v0
.end method
