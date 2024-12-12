.class final Lorg/codegist/crest/io/http/HttpClientHttpChannel;
.super Ljava/lang/Object;
.source "HttpClientHttpChannel.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;,
        Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;,
        Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/codegist/common/log/Logger;


# instance fields
.field private final client:Lorg/apache/http/client/HttpClient;

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->LOGGER:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 49
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->client:Lorg/apache/http/client/HttpClient;

    .line 50
    return-void
.end method

.method static synthetic access$200()Lorg/codegist/common/log/Logger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->LOGGER:Lorg/codegist/common/log/Logger;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public send()Lorg/codegist/crest/io/http/HttpChannel$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;

    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->client:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpClientResponse;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;)V

    return-object v0
.end method

.method public setAccept(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 58
    return-void
.end method

.method public writeEntityWith(Lorg/codegist/crest/io/http/HttpEntityWriter;)V
    .locals 3
    .param p1, "httpEntityWriter"    # Lorg/codegist/crest/io/http/HttpEntityWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    new-instance v1, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;-><init>(Lorg/codegist/crest/io/http/HttpEntityWriter;Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 78
    return-void
.end method
