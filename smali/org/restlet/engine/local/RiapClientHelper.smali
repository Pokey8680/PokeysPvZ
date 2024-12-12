.class public Lorg/restlet/engine/local/RiapClientHelper;
.super Lorg/restlet/engine/ClientHelper;
.source "RiapClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 2
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/restlet/engine/ClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 59
    invoke-virtual {p0}, Lorg/restlet/engine/local/RiapClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "scheme":Ljava/lang/String;
    sget-object v2, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-virtual {v2}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    new-instance v0, Lorg/restlet/data/LocalReference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/restlet/data/LocalReference;-><init>(Lorg/restlet/data/Reference;)V

    .line 78
    .local v0, "ref":Lorg/restlet/data/LocalReference;
    invoke-virtual {v0}, Lorg/restlet/data/LocalReference;->getRiapAuthorityType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 79
    sget-object v2, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    invoke-virtual {v2}, Lorg/restlet/engine/local/RiapServerHelper;->getContext()Lorg/restlet/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    invoke-virtual {v2}, Lorg/restlet/engine/local/RiapServerHelper;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lorg/restlet/engine/local/RiapServerHelper;->instance:Lorg/restlet/engine/local/RiapServerHelper;

    invoke-virtual {v2}, Lorg/restlet/engine/local/RiapServerHelper;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/restlet/engine/ClientHelper;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authority \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/data/LocalReference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" not supported by the connector. Only \"component\" is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v0    # "ref":Lorg/restlet/data/LocalReference;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" not supported by the connector. Only RIAP is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
