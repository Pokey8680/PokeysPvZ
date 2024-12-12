.class public abstract Lorg/restlet/engine/local/LocalClientHelper;
.super Lorg/restlet/engine/ClientHelper;
.source "LocalClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 0
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/restlet/engine/ClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getDefaultLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/restlet/engine/local/LocalClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "defaultLanguage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLive()I
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/restlet/engine/local/LocalClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "timeToLive"

    const-string v2, "600"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->normalize()Lorg/restlet/data/Reference;

    .line 126
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "decodedPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/engine/local/LocalClientHelper;->handleLocal(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/local/LocalClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get the path of this local URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract handleLocal(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V
.end method
