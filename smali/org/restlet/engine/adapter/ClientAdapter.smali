.class public Lorg/restlet/engine/adapter/ClientAdapter;
.super Lorg/restlet/engine/adapter/Adapter;
.source "ClientAdapter.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/restlet/engine/adapter/Adapter;-><init>(Lorg/restlet/Context;)V

    .line 66
    return-void
.end method


# virtual methods
.method public commit(Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 3
    .param p1, "httpCall"    # Lorg/restlet/engine/adapter/ClientCall;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p2}, Lorg/restlet/Request;->isAsynchronous()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p2}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v0

    .line 90
    .local v0, "userCallback":Lorg/restlet/Uniform;
    new-instance v1, Lorg/restlet/engine/adapter/ClientAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/restlet/engine/adapter/ClientAdapter$1;-><init>(Lorg/restlet/engine/adapter/ClientAdapter;Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Uniform;)V

    invoke-virtual {p1, p2, p3, v1}, Lorg/restlet/engine/adapter/ClientCall;->sendRequest(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/Uniform;)V

    .line 119
    .end local v0    # "userCallback":Lorg/restlet/Uniform;
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    sget-object v1, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v2, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    if-ne v1, v2, :cond_2

    .line 111
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "HTTP client calls must have a callback in the GWT edition"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1, p2}, Lorg/restlet/engine/adapter/ClientCall;->sendRequest(Lorg/restlet/Request;)Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {p0, p3, v1, p1}, Lorg/restlet/engine/adapter/ClientAdapter;->updateResponse(Lorg/restlet/Response;Lorg/restlet/data/Status;Lorg/restlet/engine/adapter/ClientCall;)V

    goto :goto_0
.end method

.method protected readResponseHeaders(Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Response;)V
    .locals 5
    .param p1, "httpCall"    # Lorg/restlet/engine/adapter/ClientCall;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ClientCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    .line 135
    .local v1, "responseHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p2}, Lorg/restlet/Response;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    const-string v3, "org.restlet.http.headers"

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v1, p2}, Lorg/restlet/engine/header/HeaderUtils;->copyResponseTransportHeaders(Lorg/restlet/util/Series;Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "responseHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ClientAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "An error occured during the processing of the HTTP response."

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget-object v2, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {p2, v2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toSpecific(Lorg/restlet/engine/adapter/HttpClientHelper;Lorg/restlet/Request;)Lorg/restlet/engine/adapter/ClientCall;
    .locals 3
    .param p1, "client"    # Lorg/restlet/engine/adapter/HttpClientHelper;
    .param p2, "request"    # Lorg/restlet/Request;

    .prologue
    .line 159
    invoke-virtual {p1, p2}, Lorg/restlet/engine/adapter/HttpClientHelper;->create(Lorg/restlet/Request;)Lorg/restlet/engine/adapter/ClientCall;

    move-result-object v0

    .line 162
    .local v0, "result":Lorg/restlet/engine/adapter/ClientCall;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lorg/restlet/engine/adapter/ClientCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/restlet/engine/header/HeaderUtils;->addGeneralHeaders(Lorg/restlet/Message;Lorg/restlet/util/Series;)V

    .line 165
    invoke-virtual {p2}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p2}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {v0}, Lorg/restlet/engine/adapter/ClientCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/restlet/engine/header/HeaderUtils;->addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 172
    :cond_0
    invoke-virtual {v0}, Lorg/restlet/engine/adapter/ClientCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/restlet/engine/header/HeaderUtils;->addRequestHeaders(Lorg/restlet/Request;Lorg/restlet/util/Series;)V

    .line 175
    :cond_1
    return-object v0
.end method

.method public updateResponse(Lorg/restlet/Response;Lorg/restlet/data/Status;Lorg/restlet/engine/adapter/ClientCall;)V
    .locals 3
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "status"    # Lorg/restlet/data/Status;
    .param p3, "httpCall"    # Lorg/restlet/engine/adapter/ClientCall;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1, p2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 196
    invoke-virtual {p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v0

    invoke-virtual {p3}, Lorg/restlet/engine/adapter/ClientCall;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/ServerInfo;->setAddress(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v0

    invoke-virtual {p3}, Lorg/restlet/engine/adapter/ClientCall;->getServerPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/ServerInfo;->setPort(I)V

    .line 200
    invoke-virtual {p0, p3, p1}, Lorg/restlet/engine/adapter/ClientAdapter;->readResponseHeaders(Lorg/restlet/engine/adapter/ClientCall;Lorg/restlet/Response;)V

    .line 203
    invoke-virtual {p3, p1}, Lorg/restlet/engine/adapter/ClientCall;->getResponseEntity(Lorg/restlet/Response;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 206
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v0, v1}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Status;->SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v0, v1}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    .line 216
    invoke-virtual {p1, v2}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    invoke-virtual {v0, v1}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->release()V

    .line 222
    invoke-virtual {p1, v2}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto :goto_0
.end method
