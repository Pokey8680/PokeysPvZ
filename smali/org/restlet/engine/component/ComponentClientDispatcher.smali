.class public Lorg/restlet/engine/component/ComponentClientDispatcher;
.super Lorg/restlet/engine/TemplateDispatcher;
.source "ComponentClientDispatcher.java"


# instance fields
.field private componentContext:Lorg/restlet/engine/component/ComponentContext;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/component/ComponentContext;)V
    .locals 0
    .param p1, "componentContext"    # Lorg/restlet/engine/component/ComponentContext;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/restlet/engine/TemplateDispatcher;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/restlet/engine/component/ComponentClientDispatcher;->componentContext:Lorg/restlet/engine/component/ComponentContext;

    .line 68
    return-void
.end method

.method private getComponent()Lorg/restlet/Component;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "result":Lorg/restlet/Component;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getComponentContext()Lorg/restlet/engine/component/ComponentContext;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getComponentContext()Lorg/restlet/engine/component/ComponentContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/component/ComponentContext;->getComponentHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getComponentContext()Lorg/restlet/engine/component/ComponentContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/component/ComponentContext;->getComponentHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    .end local v0    # "result":Lorg/restlet/Component;
    check-cast v0, Lorg/restlet/Component;

    .line 160
    .restart local v0    # "result":Lorg/restlet/Component;
    :cond_0
    return-object v0
.end method

.method private getComponentContext()Lorg/restlet/engine/component/ComponentContext;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentClientDispatcher;->componentContext:Lorg/restlet/engine/component/ComponentContext;

    return-object v0
.end method


# virtual methods
.method public doHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 10
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 72
    const/4 v7, 0x0

    .line 74
    .local v7, "result":I
    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v6

    .line 76
    .local v6, "protocol":Lorg/restlet/data/Protocol;
    sget-object v8, Lorg/restlet/data/Protocol;->RIAP:Lorg/restlet/data/Protocol;

    invoke-virtual {v6, v8}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 78
    new-instance v1, Lorg/restlet/data/LocalReference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/restlet/data/LocalReference;-><init>(Lorg/restlet/data/Reference;)V

    .line 79
    .local v1, "cr":Lorg/restlet/data/LocalReference;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getComponent()Lorg/restlet/Component;

    move-result-object v0

    .line 81
    .local v0, "component":Lorg/restlet/Component;
    if-eqz v0, :cond_6

    .line 82
    invoke-virtual {v1}, Lorg/restlet/data/LocalReference;->getRiapAuthorityType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/Reference;->setBaseRef(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lorg/restlet/routing/Router;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 144
    .end local v0    # "component":Lorg/restlet/Component;
    .end local v1    # "cr":Lorg/restlet/data/LocalReference;
    :goto_0
    return v7

    .line 91
    .restart local v0    # "component":Lorg/restlet/Component;
    .restart local v1    # "cr":Lorg/restlet/data/LocalReference;
    :cond_0
    invoke-virtual {v1}, Lorg/restlet/data/LocalReference;->getRiapAuthorityType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "host":Lorg/restlet/routing/VirtualHost;
    const/4 v2, 0x0

    .line 94
    .local v2, "currentHost":Lorg/restlet/routing/VirtualHost;
    invoke-static {}, Lorg/restlet/routing/VirtualHost;->getCurrent()Ljava/lang/Integer;

    move-result-object v4

    .line 97
    .local v4, "hostHashCode":Ljava/lang/Integer;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getComponent()Lorg/restlet/Component;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 99
    .local v5, "hostIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/routing/VirtualHost;>;"
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "currentHost":Lorg/restlet/routing/VirtualHost;
    check-cast v2, Lorg/restlet/routing/VirtualHost;

    .line 102
    .restart local v2    # "currentHost":Lorg/restlet/routing/VirtualHost;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 103
    move-object v3, v2

    goto :goto_1

    .line 107
    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {v0}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 108
    invoke-virtual {v0}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 109
    invoke-virtual {v0}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v3

    .line 113
    :cond_3
    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->getHostIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/Reference;->setBaseRef(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3, p1, p2}, Lorg/restlet/routing/VirtualHost;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    const-string v9, "No virtual host is available to route the RIAP Host request."

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 126
    const/4 v7, 0x2

    goto :goto_0

    .line 129
    .end local v2    # "currentHost":Lorg/restlet/routing/VirtualHost;
    .end local v3    # "host":Lorg/restlet/routing/VirtualHost;
    .end local v4    # "hostHashCode":Ljava/lang/Integer;
    .end local v5    # "hostIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/routing/VirtualHost;>;"
    :cond_5
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    const-string v9, "Unknown RIAP authority. Only \"component\" is supported."

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 132
    const/4 v7, 0x2

    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getLogger()Ljava/util/logging/Logger;

    move-result-object v8

    const-string v9, "No component is available to route the RIAP request."

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 137
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 140
    .end local v0    # "component":Lorg/restlet/Component;
    .end local v1    # "cr":Lorg/restlet/data/LocalReference;
    :cond_7
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;->getComponentContext()Lorg/restlet/engine/component/ComponentContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/engine/component/ComponentContext;->getComponentHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/engine/component/ComponentHelper;->getClientRouter()Lorg/restlet/engine/component/ClientRouter;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lorg/restlet/engine/component/ClientRouter;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto/16 :goto_0
.end method
