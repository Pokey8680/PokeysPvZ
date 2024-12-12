.class Lorg/codegist/crest/io/http/RequestEntityWriter;
.super Ljava/lang/Object;
.source "HttpRequestHttpEntityWriter.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpEntityWriter;


# static fields
.field private static final LOGGER:Lorg/codegist/common/log/Logger;


# instance fields
.field private final request:Lorg/codegist/crest/io/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/codegist/crest/io/Request;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/RequestEntityWriter;->LOGGER:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/io/Request;)V
    .locals 0
    .param p1, "request"    # Lorg/codegist/crest/io/Request;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/codegist/crest/io/http/RequestEntityWriter;->request:Lorg/codegist/crest/io/Request;

    .line 41
    return-void
.end method


# virtual methods
.method public getContentLength()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codegist/crest/io/http/RequestEntityWriter;->request:Lorg/codegist/crest/io/Request;

    invoke-interface {v0}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/codegist/crest/config/MethodConfig;->getEntityWriter()Lorg/codegist/crest/entity/EntityWriter;

    move-result-object v0

    iget-object v1, p0, Lorg/codegist/crest/io/http/RequestEntityWriter;->request:Lorg/codegist/crest/io/Request;

    invoke-interface {v0, v1}, Lorg/codegist/crest/entity/EntityWriter;->getContentLength(Lorg/codegist/crest/io/Request;)I

    move-result v0

    return v0
.end method

.method public writeEntityTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v2, Lorg/codegist/crest/io/http/RequestEntityWriter;->LOGGER:Lorg/codegist/common/log/Logger;

    invoke-virtual {v2}, Lorg/codegist/common/log/Logger;->isTraceOn()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, p1

    .line 46
    .local v1, "os":Ljava/io/OutputStream;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/codegist/crest/io/http/RequestEntityWriter;->request:Lorg/codegist/crest/io/Request;

    invoke-interface {v2}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/codegist/crest/config/MethodConfig;->getEntityWriter()Lorg/codegist/crest/entity/EntityWriter;

    move-result-object v2

    iget-object v3, p0, Lorg/codegist/crest/io/http/RequestEntityWriter;->request:Lorg/codegist/crest/io/Request;

    invoke-interface {v2, v3, v1}, Lorg/codegist/crest/entity/EntityWriter;->writeTo(Lorg/codegist/crest/io/Request;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 51
    return-void

    .line 44
    .end local v1    # "os":Ljava/io/OutputStream;
    :cond_0
    new-instance v1, Lorg/codegist/common/log/LoggingOutputStream;

    sget-object v2, Lorg/codegist/crest/io/http/RequestEntityWriter;->LOGGER:Lorg/codegist/common/log/Logger;

    invoke-direct {v1, p1, v2}, Lorg/codegist/common/log/LoggingOutputStream;-><init>(Ljava/io/OutputStream;Lorg/codegist/common/log/Logger;)V

    goto :goto_0

    .line 47
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
