.class public Lorg/restlet/engine/component/ClientRoute;
.super Lorg/restlet/routing/Route;
.source "ClientRoute.java"


# direct methods
.method public constructor <init>(Lorg/restlet/routing/Router;Lorg/restlet/Client;)V
    .locals 0
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "target"    # Lorg/restlet/Client;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/restlet/routing/Route;-><init>(Lorg/restlet/routing/Router;Lorg/restlet/Restlet;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getClient()Lorg/restlet/Client;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRoute;->getNext()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Client;

    return-object v0
.end method

.method public score(Lorg/restlet/Request;Lorg/restlet/Response;)F
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 90
    .local v1, "result":F
    invoke-virtual {p1}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    .line 92
    .local v0, "protocol":Lorg/restlet/data/Protocol;
    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Unable to determine the protocol to use for this call."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRoute;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call score for the \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRoute;->getClient()Lorg/restlet/Client;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 106
    :cond_1
    return v1

    .line 95
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/component/ClientRoute;->getClient()Lorg/restlet/Client;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Client;->getProtocols()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setNext(Lorg/restlet/Client;)V
    .locals 0
    .param p1, "next"    # Lorg/restlet/Client;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lorg/restlet/routing/Route;->setNext(Lorg/restlet/Restlet;)V

    .line 117
    return-void
.end method
