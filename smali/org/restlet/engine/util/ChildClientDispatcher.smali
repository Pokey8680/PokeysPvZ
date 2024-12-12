.class public Lorg/restlet/engine/util/ChildClientDispatcher;
.super Lorg/restlet/engine/TemplateDispatcher;
.source "ChildClientDispatcher.java"


# instance fields
.field private childContext:Lorg/restlet/engine/util/ChildContext;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/util/ChildContext;)V
    .locals 0
    .param p1, "childContext"    # Lorg/restlet/engine/util/ChildContext;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/restlet/engine/TemplateDispatcher;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/restlet/engine/util/ChildClientDispatcher;->childContext:Lorg/restlet/engine/util/ChildContext;

    .line 65
    return-void
.end method

.method private getChildContext()Lorg/restlet/engine/util/ChildContext;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/restlet/engine/util/ChildClientDispatcher;->childContext:Lorg/restlet/engine/util/ChildContext;

    return-object v0
.end method

.method private parentHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/util/ChildContext;->getParentContext()Lorg/restlet/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/util/ChildContext;->getParentContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/util/ChildContext;->getParentContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "The parent context doesn\'t have a client dispatcher available. Unable to handle call."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Your Restlet doesn\'t have a parent context available."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Your Restlet doesn\'t have a context available."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 80
    const/4 v3, 0x0

    .line 82
    .local v3, "result":I
    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v2

    .line 84
    .local v2, "protocol":Lorg/restlet/data/Protocol;
    sget-object v4, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-virtual {v2, v4}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    new-instance v1, Lorg/restlet/data/LocalReference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/restlet/data/LocalReference;-><init>(Lorg/restlet/data/Reference;)V

    .line 88
    .local v1, "cr":Lorg/restlet/data/LocalReference;
    invoke-virtual {v1}, Lorg/restlet/data/LocalReference;->getRiapAuthorityType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 89
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/util/ChildContext;->getChild()Lorg/restlet/Restlet;

    move-result-object v4

    instance-of v4, v4, Lorg/restlet/Application;

    if-eqz v4, :cond_0

    .line 91
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/util/ChildContext;->getChild()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Application;

    .line 93
    .local v0, "application":Lorg/restlet/Application;
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Reference;->setBaseRef(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Lorg/restlet/Application;->getInboundRoot()Lorg/restlet/Restlet;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 124
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "cr":Lorg/restlet/data/LocalReference;
    :cond_0
    :goto_0
    return v3

    .line 97
    .restart local v1    # "cr":Lorg/restlet/data/LocalReference;
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/data/LocalReference;->getRiapAuthorityType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 98
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/util/ChildClientDispatcher;->parentHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v1}, Lorg/restlet/data/LocalReference;->getRiapAuthorityType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/util/ChildClientDispatcher;->parentHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "Unknown RIAP authority. Only \"component\", \"host\" and \"application\" are supported."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 105
    const/4 v3, 0x2

    goto :goto_0

    .line 108
    .end local v1    # "cr":Lorg/restlet/data/LocalReference;
    :cond_4
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/util/ChildContext;->getChild()Lorg/restlet/Restlet;

    move-result-object v4

    instance-of v4, v4, Lorg/restlet/Application;

    if-eqz v4, :cond_5

    .line 110
    invoke-direct {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getChildContext()Lorg/restlet/engine/util/ChildContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/engine/util/ChildContext;->getChild()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Application;

    .line 113
    .restart local v0    # "application":Lorg/restlet/Application;
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/service/ConnectorService;->getClientProtocols()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 115
    invoke-virtual {p0}, Lorg/restlet/engine/util/ChildClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "The protocol used by this request is not declared in the application\'s connector service. Please update the list of client connectors used by your application and restart it."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 121
    .end local v0    # "application":Lorg/restlet/Application;
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/util/ChildClientDispatcher;->parentHandle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0
.end method
