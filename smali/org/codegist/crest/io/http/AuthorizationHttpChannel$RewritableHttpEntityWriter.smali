.class final Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;
.super Ljava/lang/Object;
.source "AuthorizationHttpChannel.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpEntityWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/io/http/AuthorizationHttpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RewritableHttpEntityWriter"
.end annotation


# instance fields
.field private contentLength:Ljava/lang/Integer;

.field private final delegate:Lorg/codegist/crest/io/http/HttpEntityWriter;

.field private entityContent:[B


# direct methods
.method private constructor <init>(Lorg/codegist/crest/io/http/HttpEntityWriter;)V
    .locals 0
    .param p1, "delegate"    # Lorg/codegist/crest/io/http/HttpEntityWriter;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->delegate:Lorg/codegist/crest/io/http/HttpEntityWriter;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lorg/codegist/crest/io/http/HttpEntityWriter;Lorg/codegist/crest/io/http/AuthorizationHttpChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/codegist/crest/io/http/HttpEntityWriter;
    .param p2, "x1"    # Lorg/codegist/crest/io/http/AuthorizationHttpChannel$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;-><init>(Lorg/codegist/crest/io/http/HttpEntityWriter;)V

    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->contentLength:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->delegate:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpEntityWriter;->getContentLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->contentLength:Ljava/lang/Integer;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public writeEntityTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->entityContent:[B

    if-nez v1, :cond_0

    .line 163
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v0, "cache":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->delegate:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v1, v0}, Lorg/codegist/crest/io/http/HttpEntityWriter;->writeEntityTo(Ljava/io/OutputStream;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->entityContent:[B

    .line 167
    .end local v0    # "cache":Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;->entityContent:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, p1}, Lorg/codegist/common/io/IOs;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 168
    return-void
.end method
