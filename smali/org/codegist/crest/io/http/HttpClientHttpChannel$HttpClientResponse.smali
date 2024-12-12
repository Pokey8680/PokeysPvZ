.class final Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;
.super Ljava/lang/Object;
.source "HttpClientHttpChannel.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannel$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/HttpClientHttpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpClientResponse"
.end annotation


# instance fields
.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 91
    iput-object p2, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "x1"    # Lorg/apache/http/HttpResponse;
    .param p3, "x2"    # Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    invoke-static {}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->access$200()Lorg/codegist/common/log/Logger;

    move-result-object v1

    const-string v2, "Consuming Response Content..."

    invoke-virtual {v1, v2}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    invoke-static {}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->access$200()Lorg/codegist/common/log/Logger;

    move-result-object v1

    const-string v2, "Abording Request..."

    invoke-virtual {v1, v2}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 137
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->access$200()Lorg/codegist/common/log/Logger;

    move-result-object v1

    const-string v2, "Failed to consume content for request %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/codegist/common/log/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    invoke-static {}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->access$200()Lorg/codegist/common/log/Logger;

    move-result-object v1

    const-string v2, "Abording Request..."

    invoke-virtual {v1, v2}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->access$200()Lorg/codegist/common/log/Logger;

    move-result-object v2

    const-string v3, "Abording Request..."

    invoke-virtual {v2, v3}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 135
    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    throw v1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 110
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    const-string v2, "Content-Type"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 101
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 96
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/codegist/common/io/EmptyInputStream;->INSTANCE:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
