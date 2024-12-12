.class public Lorg/restlet/ext/httpclient/internal/HttpMethodCall;
.super Lorg/restlet/engine/adapter/ClientCall;
.source "HttpMethodCall.java"


# instance fields
.field private volatile clientHelper:Lorg/restlet/ext/httpclient/HttpClientHelper;

.field private volatile httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private volatile httpResponse:Lorg/apache/http/HttpResponse;

.field private volatile responseHeadersAdded:Z


# direct methods
.method public constructor <init>(Lorg/restlet/ext/httpclient/HttpClientHelper;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "helper"    # Lorg/restlet/ext/httpclient/HttpClientHelper;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "requestUri"    # Ljava/lang/String;
    .param p4, "hasEntity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lorg/restlet/engine/adapter/ClientCall;-><init>(Lorg/restlet/engine/adapter/HttpClientHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->clientHelper:Lorg/restlet/ext/httpclient/HttpClientHelper;

    .line 110
    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 146
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->responseHeadersAdded:Z

    .line 147
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->HTTPS:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->setConfidential(Z)V

    .line 153
    return-void

    .line 113
    :cond_0
    sget-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 115
    :cond_1
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 117
    :cond_2
    sget-object v0, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 121
    :cond_4
    sget-object v0, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 123
    :cond_5
    sget-object v0, Lorg/restlet/data/Method;->TRACE:Lorg/restlet/data/Method;

    invoke-virtual {v0}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-direct {v0, p3}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto/16 :goto_0

    .line 126
    :cond_6
    new-instance v0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;-><init>(Lorg/restlet/ext/httpclient/internal/HttpMethodCall;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    goto/16 :goto_0

    .line 150
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only HTTP or HTTPS resource URIs are allowed here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestEntityChannel()Ljava/nio/channels/WritableByteChannel;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestEntityStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestHeadStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseEntityChannel(J)Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseEntityStream(J)Ljava/io/InputStream;
    .locals 4
    .param p1, "size"    # J

    .prologue
    const/4 v0, 0x0

    .line 206
    const/4 v1, 0x0

    .line 211
    .local v1, "result":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-nez v3, :cond_2

    .line 214
    .local v0, "responseStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 215
    new-instance v2, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$2;

    invoke-direct {v2, p0, v0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$2;-><init>(Lorg/restlet/ext/httpclient/internal/HttpMethodCall;Ljava/io/InputStream;)V

    .end local v1    # "result":Ljava/io/InputStream;
    .local v2, "result":Ljava/io/InputStream;
    move-object v1, v2

    .line 226
    .end local v0    # "responseStream":Ljava/io/InputStream;
    .end local v2    # "result":Ljava/io/InputStream;
    .restart local v1    # "result":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 211
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getResponseHeaders()Lorg/restlet/util/Series;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-super {p0}, Lorg/restlet/engine/adapter/ClientCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v4

    .line 239
    .local v4, "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    iget-boolean v5, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->responseHeadersAdded:Z

    if-nez v5, :cond_1

    .line 240
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 243
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->responseHeadersAdded:Z

    .line 250
    :cond_1
    return-object v4
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRequest(Lorg/restlet/Request;)Lorg/restlet/data/Status;
    .locals 10
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 285
    const/4 v5, 0x0

    .line 288
    .local v5, "result":Lorg/restlet/data/Status;
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 291
    .local v1, "entity":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/engine/header/Header;

    .line 292
    .local v2, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v2}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 294
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-virtual {v2}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    .end local v1    # "entity":Lorg/restlet/representation/Representation;
    .end local v2    # "header":Lorg/restlet/engine/header/Header;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Lorg/restlet/data/Status;
    :catch_0
    move-exception v4

    .line 343
    .local v4, "ioe":Ljava/io/IOException;
    iget-object v6, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->clientHelper:Lorg/restlet/ext/httpclient/HttpClientHelper;

    invoke-virtual {v6}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "An error occurred during the communication with the remote HTTP server."

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    new-instance v5, Lorg/restlet/data/Status;

    sget-object v6, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    invoke-direct {v5, v6, v4}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 351
    .restart local v5    # "result":Lorg/restlet/data/Status;
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 354
    .end local v4    # "ioe":Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 300
    .restart local v1    # "entity":Lorg/restlet/representation/Representation;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    if-eqz v6, :cond_2

    .line 302
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 303
    .local v0, "eem":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    new-instance v6, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;

    invoke-direct {v6, p0, v1}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;-><init>(Lorg/restlet/ext/httpclient/internal/HttpMethodCall;Lorg/restlet/representation/Representation;)V

    invoke-virtual {v0, v6}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 336
    .end local v0    # "eem":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :cond_2
    iget-object v6, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->clientHelper:Lorg/restlet/ext/httpclient/HttpClientHelper;

    invoke-virtual {v6}, Lorg/restlet/ext/httpclient/HttpClientHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    iput-object v6, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 341
    new-instance v5, Lorg/restlet/data/Status;

    .end local v5    # "result":Lorg/restlet/data/Status;
    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getStatusCode()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/restlet/data/Status;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "result":Lorg/restlet/data/Status;
    goto :goto_1
.end method

.method public sendRequest(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/Uniform;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "callback"    # Lorg/restlet/Uniform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->sendRequest(Lorg/restlet/Request;)Lorg/restlet/data/Status;

    .line 362
    invoke-virtual {p1}, Lorg/restlet/Request;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Lorg/restlet/Request;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 366
    :cond_0
    if-eqz p3, :cond_1

    .line 368
    invoke-interface {p3, p1, p2}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 370
    :cond_1
    return-void
.end method
