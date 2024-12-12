.class public Lcom/ea/nimble/SynergyResponse;
.super Ljava/lang/Object;
.source "SynergyResponse.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyResponse;


# instance fields
.field public error:Lcom/ea/nimble/Error;

.field public httpResponse:Lcom/ea/nimble/IHttpResponse;

.field public jsonData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    .line 11
    iput-object v0, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    .line 12
    iput-object v0, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_0
.end method

.method public getHttpResponse()Lcom/ea/nimble/IHttpResponse;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    return-object v0
.end method

.method public getJsonData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->isCompleted()Z

    move-result v0

    goto :goto_0
.end method

.method public parseData()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 19
    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    invoke-interface {v6}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v6

    if-nez v6, :cond_2

    .line 26
    const-string v0, "<empty>"

    .line 29
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    invoke-interface {v6}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/ea/nimble/Utility;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 32
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object v2, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    const-string v7, "resultCode"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    const-string v7, "resultCode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 44
    .local v5, "resultCode":I
    if-gez v5, :cond_0

    .line 46
    iget-object v6, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    const-string v7, "message"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    .local v4, "message":Ljava/lang/String;
    new-instance v6, Lcom/ea/nimble/SynergyServerError;

    invoke-direct {v6, v5, v4}, Lcom/ea/nimble/SynergyServerError;-><init>(ILjava/lang/String;)V

    iput-object v6, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    goto :goto_0

    .line 34
    .end local v2    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "resultCode":I
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    iput-object v7, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    .line 37
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unparseable synergy json response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    goto :goto_0

    .line 53
    .end local v0    # "dataString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iput-object v7, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    .line 54
    iput-object v7, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    goto :goto_0
.end method
