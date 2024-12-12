.class public abstract Lorg/restlet/engine/adapter/HttpClientHelper;
.super Lorg/restlet/engine/ClientHelper;
.source "HttpClientHelper.java"


# instance fields
.field private volatile adapter:Lorg/restlet/engine/adapter/ClientAdapter;


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 1
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/restlet/engine/ClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/engine/adapter/HttpClientHelper;->adapter:Lorg/restlet/engine/adapter/ClientAdapter;

    .line 80
    return-void
.end method


# virtual methods
.method public abstract create(Lorg/restlet/Request;)Lorg/restlet/engine/adapter/ClientCall;
.end method

.method public getAdapter()Lorg/restlet/engine/adapter/ClientAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    iget-object v1, p0, Lorg/restlet/engine/adapter/HttpClientHelper;->adapter:Lorg/restlet/engine/adapter/ClientAdapter;

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "adapter"

    const-string v3, "org.restlet.engine.adapter.ClientAdapter"

    invoke-virtual {v1, v2, v3}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "adapterClass":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Lorg/restlet/Context;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpClientHelper;->getContext()Lorg/restlet/Context;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/adapter/ClientAdapter;

    iput-object v1, p0, Lorg/restlet/engine/adapter/HttpClientHelper;->adapter:Lorg/restlet/engine/adapter/ClientAdapter;

    .line 105
    .end local v0    # "adapterClass":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/restlet/engine/adapter/HttpClientHelper;->adapter:Lorg/restlet/engine/adapter/ClientAdapter;

    return-object v1
.end method

.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpClientHelper;->getAdapter()Lorg/restlet/engine/adapter/ClientAdapter;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lorg/restlet/engine/adapter/ClientAdapter;->toSpecific(Lorg/restlet/engine/adapter/HttpClientHelper;Lorg/restlet/Request;)Lorg/restlet/engine/adapter/ClientCall;

    move-result-object v0

    .line 112
    .local v0, "clientCall":Lorg/restlet/engine/adapter/ClientCall;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpClientHelper;->getAdapter()Lorg/restlet/engine/adapter/ClientAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2}, Lorg/restlet/engine/adapter/ClientAdapter;->commit(Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Request;Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "clientCall":Lorg/restlet/engine/adapter/ClientCall;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Error while handling an HTTP client call"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    sget-object v2, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdapter(Lorg/restlet/engine/adapter/ClientAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lorg/restlet/engine/adapter/ClientAdapter;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/restlet/engine/adapter/HttpClientHelper;->adapter:Lorg/restlet/engine/adapter/ClientAdapter;

    .line 128
    return-void
.end method
