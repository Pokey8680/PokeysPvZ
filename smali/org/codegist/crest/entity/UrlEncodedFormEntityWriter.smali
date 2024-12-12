.class public Lorg/codegist/crest/entity/UrlEncodedFormEntityWriter;
.super Ljava/lang/Object;
.source "UrlEncodedFormEntityWriter.java"

# interfaces
.implements Lorg/codegist/crest/entity/EntityWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength(Lorg/codegist/crest/io/Request;)I
    .locals 1
    .param p1, "request"    # Lorg/codegist/crest/io/Request;

    .prologue
    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public getContentType(Lorg/codegist/crest/io/Request;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lorg/codegist/crest/io/Request;

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/codegist/crest/config/MethodConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/codegist/crest/io/Request;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "request"    # Lorg/codegist/crest/io/Request;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/codegist/crest/config/MethodConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 58
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 59
    .local v1, "writer":Ljava/io/Writer;
    sget-object v2, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p1, v2}, Lorg/codegist/crest/io/Request;->getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0x26

    invoke-static {v1, v2, v3}, Lorg/codegist/crest/util/Pairs;->join(Ljava/io/Writer;Ljava/util/Iterator;C)V

    .line 60
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 61
    return-void
.end method
