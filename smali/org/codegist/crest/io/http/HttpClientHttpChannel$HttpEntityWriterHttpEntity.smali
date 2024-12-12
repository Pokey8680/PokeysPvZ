.class final Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "HttpClientHttpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/HttpClientHttpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpEntityWriterHttpEntity"
.end annotation


# instance fields
.field private final writer:Lorg/codegist/crest/io/http/HttpEntityWriter;


# direct methods
.method private constructor <init>(Lorg/codegist/crest/io/http/HttpEntityWriter;)V
    .locals 0
    .param p1, "writer"    # Lorg/codegist/crest/io/http/HttpEntityWriter;

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 145
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;->writer:Lorg/codegist/crest/io/http/HttpEntityWriter;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lorg/codegist/crest/io/http/HttpEntityWriter;Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codegist/crest/io/http/HttpEntityWriter;
    .param p2, "x1"    # Lorg/codegist/crest/io/http/HttpClientHttpChannel$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;-><init>(Lorg/codegist/crest/io/http/HttpEntityWriter;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;->writer:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpEntityWriter;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannel$HttpEntityWriterHttpEntity;->writer:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v0, p1}, Lorg/codegist/crest/io/http/HttpEntityWriter;->writeEntityTo(Ljava/io/OutputStream;)V

    .line 162
    return-void
.end method
