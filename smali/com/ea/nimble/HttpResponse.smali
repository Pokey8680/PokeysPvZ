.class public Lcom/ea/nimble/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lcom/ea/nimble/IHttpResponse;


# instance fields
.field public data:Lcom/ea/nimble/ByteBufferIOStream;

.field public downloadedContentLength:J

.field public error:Ljava/lang/Exception;

.field public expectedContentLength:J

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isCompleted:Z

.field public lastModified:J

.field public statusCode:I

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    .line 14
    iput-boolean v1, p0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    .line 15
    iput v1, p0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    .line 17
    iput-wide v2, p0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    .line 18
    iput-wide v2, p0, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    .line 20
    new-instance v0, Lcom/ea/nimble/ByteBufferIOStream;

    invoke-direct {v0}, Lcom/ea/nimble/ByteBufferIOStream;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    .line 21
    return-void
.end method


# virtual methods
.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedContentLength()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    return-wide v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExpectedContentLength()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 55
    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 65
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 61
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    return v0
.end method
