.class Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;
.super Ljava/lang/Object;
.source "HttpChannelResponseHttpResource.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpResource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$1;,
        Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;
    }
.end annotation


# static fields
.field private static final RESPONSE_LOGGER:Lorg/codegist/common/log/Logger;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final contentEncoding:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private final response:Lorg/codegist/crest/io/http/HttpChannel$Response;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/codegist/crest/io/Response;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->RESPONSE_LOGGER:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/io/http/HttpChannel$Response;)V
    .locals 3
    .param p1, "response"    # Lorg/codegist/crest/io/http/HttpChannel$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->response:Lorg/codegist/crest/io/http/HttpChannel$Response;

    .line 48
    new-instance v0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;

    invoke-interface {p1}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;-><init>(Ljava/lang/String;Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$1;)V

    .line 49
    .local v0, "ct":Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;
    invoke-static {v0}, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->access$100(Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->contentType:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;->access$200(Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource$ContentType;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->charset:Ljava/nio/charset/Charset;

    .line 51
    invoke-interface {p1}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->contentEncoding:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->getEntity(Lorg/codegist/crest/io/http/HttpChannel$Response;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->inputStream:Ljava/io/InputStream;

    .line 53
    return-void
.end method

.method private static getEntity(Lorg/codegist/crest/io/http/HttpChannel$Response;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 4
    .param p0, "response"    # Lorg/codegist/crest/io/http/HttpChannel$Response;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v2, "gzip"

    invoke-interface {p0}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getEntity()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 86
    .local v1, "stream":Ljava/io/InputStream;
    :goto_0
    sget-object v2, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->RESPONSE_LOGGER:Lorg/codegist/common/log/Logger;

    invoke-virtual {v2}, Lorg/codegist/common/log/Logger;->isTraceOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 85
    :cond_0
    invoke-interface {p0}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getEntity()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 89
    .restart local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/codegist/common/io/IOs;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v0

    .line 90
    .local v0, "dump":[B
    sget-object v2, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->RESPONSE_LOGGER:Lorg/codegist/common/log/Logger;

    const-string v3, "Received Http Response"

    invoke-virtual {v2, v3}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 91
    sget-object v2, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->RESPONSE_LOGGER:Lorg/codegist/common/log/Logger;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 92
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "stream":Ljava/io/InputStream;
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->response:Lorg/codegist/crest/io/http/HttpChannel$Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpChannel$Response;->close()V

    .line 81
    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getEntity()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->response:Lorg/codegist/crest/io/http/HttpChannel$Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getStatusCode()I

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
    .line 72
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;->response:Lorg/codegist/crest/io/http/HttpChannel$Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpChannel$Response;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
