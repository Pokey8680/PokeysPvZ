.class final Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;
.super Ljava/lang/Object;
.source "HttpURLConnectionHttpChannel.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$1;,
        Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/codegist/common/log/Logger;


# instance fields
.field private final con:Ljava/net/HttpURLConnection;

.field private httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

.field private final methodType:Lorg/codegist/crest/config/MethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->LOG:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lorg/codegist/crest/config/MethodType;)V
    .locals 3
    .param p1, "con"    # Ljava/net/HttpURLConnection;
    .param p2, "methodType"    # Lorg/codegist/crest/config/MethodType;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->methodType:Lorg/codegist/crest/config/MethodType;

    .line 43
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    .line 44
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "CodeGist-CRest Agent"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic access$100()Lorg/codegist/common/log/Logger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->LOG:Lorg/codegist/common/log/Logger;

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
    .line 61
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
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
    .line 77
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->methodType:Lorg/codegist/crest/config/MethodType;

    invoke-virtual {v1}, Lorg/codegist/crest/config/MethodType;->hasEntity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v1}, Lorg/codegist/crest/io/http/HttpEntityWriter;->getContentLength()I

    move-result v1

    if-ltz v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    iget-object v3, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v3}, Lorg/codegist/crest/io/http/HttpEntityWriter;->getContentLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 82
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 83
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v1, v0}, Lorg/codegist/crest/io/http/HttpEntityWriter;->writeEntityTo(Ljava/io/OutputStream;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 85
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 87
    .end local v0    # "os":Ljava/io/OutputStream;
    :cond_1
    new-instance v1, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$HttpURLResponse;-><init>(Ljava/net/HttpURLConnection;Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel$1;)V

    return-object v1
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
    .line 69
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
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
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

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
    .line 65
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
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
    .line 57
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
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
    .line 49
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    return-void
.end method

.method public writeEntityWith(Lorg/codegist/crest/io/http/HttpEntityWriter;)V
    .locals 0
    .param p1, "httpEntityWriter"    # Lorg/codegist/crest/io/http/HttpEntityWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    .line 74
    return-void
.end method
