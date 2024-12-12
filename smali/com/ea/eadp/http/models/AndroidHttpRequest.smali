.class public Lcom/ea/eadp/http/models/AndroidHttpRequest;
.super Ljava/lang/Object;
.source "AndroidHttpRequest.java"

# interfaces
.implements Lcom/ea/eadp/http/models/HttpRequest;


# instance fields
.field private body:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/ea/eadp/http/models/OpenHttpRequest;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/eadp/http/models/AndroidHttpRequest;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequest(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private makeRequest(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v1, Lcom/ea/eadp/http/models/AndroidHttpResponse;

    invoke-direct {v1}, Lcom/ea/eadp/http/models/AndroidHttpResponse;-><init>()V

    .line 132
    .local v1, "response":Lcom/ea/eadp/http/models/HttpResponse;
    :try_start_0
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest;

    iget-object v3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->url:Ljava/net/URL;

    invoke-direct {v2, v3, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->headers:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->headers(Ljava/util/Map;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->useCaches(Z)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 136
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->body:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iget-object v3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->contentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setUrl(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setCode(I)V

    .line 143
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->message()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setMessage(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->body()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setBody(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->headers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setHeaders(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 158
    :cond_1
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setCode(I)V

    .line 149
    const-string v2, "Request was not successful. Details: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setMessage(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ea/eadp/http/models/HttpResponse;->setBody(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->request:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-virtual {v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    :cond_2
    throw v2
.end method

.method private makeRequestAsync(Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ea/eadp/http/models/HttpRequestListener;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/eadp/http/models/AndroidHttpRequest$1;-><init>(Lcom/ea/eadp/http/models/AndroidHttpRequest;Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method


# virtual methods
.method public delete()Lcom/ea/eadp/http/models/HttpResponse;
    .locals 1

    .prologue
    .line 99
    const-string v0, "DELETE"

    invoke-direct {p0, v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequest(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public deleteAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ea/eadp/http/models/HttpRequestListener;

    .prologue
    .line 104
    const-string v0, "DELETE"

    invoke-direct {p0, v0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequestAsync(Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V

    .line 105
    return-void
.end method

.method public get()Lcom/ea/eadp/http/models/HttpResponse;
    .locals 1

    .prologue
    .line 69
    const-string v0, "GET"

    invoke-direct {p0, v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequest(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ea/eadp/http/models/HttpRequestListener;

    .prologue
    .line 74
    const-string v0, "GET"

    invoke-direct {p0, v0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequestAsync(Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V

    .line 75
    return-void
.end method

.method public getResource()Ljava/net/URL;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getValueForHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public post()Lcom/ea/eadp/http/models/HttpResponse;
    .locals 1

    .prologue
    .line 79
    const-string v0, "POST"

    invoke-direct {p0, v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequest(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ea/eadp/http/models/HttpRequestListener;

    .prologue
    .line 84
    const-string v0, "POST"

    invoke-direct {p0, v0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequestAsync(Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V

    .line 85
    return-void
.end method

.method public put()Lcom/ea/eadp/http/models/HttpResponse;
    .locals 1

    .prologue
    .line 89
    const-string v0, "PUT"

    invoke-direct {p0, v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequest(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public putAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ea/eadp/http/models/HttpRequestListener;

    .prologue
    .line 94
    const-string v0, "PUT"

    invoke-direct {p0, v0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->makeRequestAsync(Ljava/lang/String;Lcom/ea/eadp/http/models/HttpRequestListener;)V

    .line 95
    return-void
.end method

.method public setBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .locals 1
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .locals 1
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->body:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->charset:Ljava/lang/String;

    .line 50
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->contentType:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public bridge synthetic setBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public setJsonBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setJsonBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public setJsonBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->body:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->charset:Ljava/lang/String;

    .line 63
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->contentType:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public bridge synthetic setJsonBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setJsonBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setJsonBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setJsonBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Ljava/net/URL;)Lcom/ea/eadp/http/models/AndroidHttpRequest;
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpRequest;->url:Ljava/net/URL;

    .line 22
    return-object p0
.end method

.method public bridge synthetic setResource(Ljava/net/URL;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 1
    .param p1, "x0"    # Ljava/net/URL;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setResource(Ljava/net/URL;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    move-result-object v0

    return-object v0
.end method
