.class public Lorg/restlet/engine/adapter/ServerAdapter;
.super Lorg/restlet/engine/adapter/Adapter;
.source "ServerAdapter.java"


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
.method protected addEntityHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lorg/restlet/engine/adapter/HttpResponse;

    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    .line 77
    .local v1, "responseHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 78
    .local v0, "entity":Lorg/restlet/representation/Representation;
    invoke-static {v0, v1}, Lorg/restlet/engine/header/HeaderUtils;->addEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 79
    return-void
.end method

.method protected addResponseHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V
    .locals 4
    .param p1, "response"    # Lorg/restlet/engine/adapter/HttpResponse;

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/header/HeaderUtils;->addGeneralHeaders(Lorg/restlet/Message;Lorg/restlet/util/Series;)V

    .line 92
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/restlet/engine/header/HeaderUtils;->addResponseHeaders(Lorg/restlet/Response;Lorg/restlet/util/Series;)V

    .line 96
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/adapter/ServerCall;->setStatusCode(I)V

    .line 99
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/adapter/ServerCall;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Exception intercepted while adding the response headers"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {v2}, Lorg/restlet/data/Status;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/adapter/ServerCall;->setStatusCode(I)V

    .line 108
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {v2}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/adapter/ServerCall;->setReasonPhrase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public commit(Lorg/restlet/engine/adapter/HttpResponse;)V
    .locals 6
    .param p1, "response"    # Lorg/restlet/engine/adapter/HttpResponse;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerAdapter;->addEntityHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 193
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerAdapter;->addResponseHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V

    .line 196
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/restlet/engine/adapter/ServerCall;->sendResponse(Lorg/restlet/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->complete()V

    .line 223
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 227
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    :try_start_1
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->isEntityAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerAdapter;->addEntityHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V

    .line 131
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A response with a 200 (Ok) status should have an entity. Make sure that resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" returns one or sets the status to 204 (No content)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/restlet/engine/adapter/ServerCall;->isConnectionBroken(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "The connection was broken. It was probably closed by the client."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    :goto_2
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/adapter/ServerCall;->complete()V

    .line 223
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_1

    .line 137
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerAdapter;->addEntityHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V

    .line 140
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->isEntityAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responses with a 204 (No content) status generally don\'t have an entity. Only adding entity headers for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 221
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/adapter/ServerCall;->complete()V

    .line 223
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 224
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    :cond_4
    throw v2

    .line 147
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 149
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->isEntityAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responses with a 205 (Reset content) status can\'t have an entity. Ignoring the entity for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_0

    .line 157
    :cond_6
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/restlet/engine/header/HeaderUtils;->addNotModifiedEntityHeaders(Lorg/restlet/representation/Representation;Lorg/restlet/util/Series;)V

    .line 163
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_0

    .line 165
    :cond_7
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 166
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->isEntityAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responses with an informational (1xx) status can\'t have an entity. Ignoring the entity for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_0

    .line 175
    :cond_8
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerAdapter;->addEntityHeaders(Lorg/restlet/engine/adapter/HttpResponse;)V

    .line 177
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->isEntityAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 180
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A response with an unavailable and potentially non empty entity was returned. Ignoring the entity for resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getRequest()Lorg/restlet/Request;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 188
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 205
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_a
    :try_start_5
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "An exception occured writing the response entity"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    sget-object v3, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    invoke-virtual {v3}, Lorg/restlet/data/Status;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/restlet/engine/adapter/ServerCall;->setStatusCode(I)V

    .line 209
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    const-string v3, "An exception occured writing the response entity"

    invoke-virtual {v2, v3}, Lorg/restlet/engine/adapter/ServerCall;->setReasonPhrase(Ljava/lang/String;)V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/engine/adapter/HttpResponse;->setEntity(Lorg/restlet/representation/Representation;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    :try_start_6
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/HttpResponse;->getHttpCall()Lorg/restlet/engine/adapter/ServerCall;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/restlet/engine/adapter/ServerCall;->sendResponse(Lorg/restlet/Response;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to send error response"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2
.end method

.method public toRequest(Lorg/restlet/engine/adapter/ServerCall;)Lorg/restlet/engine/adapter/HttpRequest;
    .locals 8
    .param p1, "httpCall"    # Lorg/restlet/engine/adapter/ServerCall;

    .prologue
    .line 238
    new-instance v3, Lorg/restlet/engine/adapter/HttpRequest;

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerAdapter;->getContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-direct {v3, v5, p1}, Lorg/restlet/engine/adapter/HttpRequest;-><init>(Lorg/restlet/Context;Lorg/restlet/engine/adapter/ServerCall;)V

    .line 239
    .local v3, "result":Lorg/restlet/engine/adapter/HttpRequest;
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.http.headers"

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 243
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.http.version"

    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->isConfidential()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 248
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 250
    .local v1, "clientCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.https.clientCertificates"

    invoke-interface {v5, v6, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/restlet/data/ClientInfo;->setCertificates(Ljava/util/List;)V

    .line 257
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "cipherSuite":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.https.cipherSuite"

    invoke-interface {v5, v6, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/restlet/data/ClientInfo;->setCipherSuite(Ljava/lang/String;)V

    .line 266
    :cond_2
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getSslKeySize()Ljava/lang/Integer;

    move-result-object v2

    .line 268
    .local v2, "keySize":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 269
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.https.keySize"

    invoke-interface {v5, v6, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_3
    invoke-virtual {p1}, Lorg/restlet/engine/adapter/ServerCall;->getSslSessionId()Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "sslSessionId":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 276
    invoke-virtual {v3}, Lorg/restlet/engine/adapter/HttpRequest;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    const-string v6, "org.restlet.https.sslSessionId"

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v0    # "cipherSuite":Ljava/lang/String;
    .end local v1    # "clientCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v2    # "keySize":Ljava/lang/Integer;
    .end local v4    # "sslSessionId":Ljava/lang/String;
    :cond_4
    return-object v3
.end method
