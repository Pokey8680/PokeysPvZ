.class final Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;
.super Ljava/lang/Object;
.source "HttpURLConnectionHttpChannel.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannel$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpURLResponse"
.end annotation


# instance fields
.field private final con:Ljava/net/HttpURLConnection;


# direct methods
.method private constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "con"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/HttpURLConnection;Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/HttpURLConnection;
    .param p2, "x1"    # Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$1;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->access$100()Lorg/codegist/common/log/Logger;

    move-result-object v0

    const-string v1, "Disconnecting..."

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    return-void
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

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
    .line 99
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

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
    .line 103
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
