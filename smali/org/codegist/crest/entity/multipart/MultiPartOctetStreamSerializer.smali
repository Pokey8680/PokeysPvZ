.class abstract Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;
.super Ljava/lang/Object;
.source "MultiPartOctetStreamSerializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Serializer",
        "<",
        "Lorg/codegist/crest/entity/multipart/MultiPart",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final LRLN:Ljava/lang/String; = "\r\n"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;, "Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getContentType(Lorg/codegist/crest/entity/multipart/MultiPart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;, "Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer<TT;>;"
    .local p1, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<TT;>;"
    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->getContentType(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1}, Lorg/codegist/common/lang/Strings;->defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getFileName(Lorg/codegist/crest/entity/multipart/MultiPart;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;, "Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer<TT;>;"
    check-cast p1, Lorg/codegist/crest/entity/multipart/MultiPart;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;->serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method

.method public serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 7
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<TT;>;",
            "Ljava/nio/charset/Charset;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;, "Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer<TT;>;"
    .local p1, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<TT;>;"
    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v4

    .line 46
    .local v4, "pc":Lorg/codegist/crest/config/ParamConfig;
    invoke-virtual {p0, p1}, Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;->getFileName(Lorg/codegist/crest/entity/multipart/MultiPart;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/codegist/crest/entity/multipart/MultiPartOctetStreamSerializer;->getContentType(Lorg/codegist/crest/entity/multipart/MultiPart;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "contentType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getBoundary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/codegist/crest/config/ParamConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 52
    .local v2, "headerSb":Ljava/lang/StringBuilder;
    invoke-static {v1}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    const-string v5, "; filename=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 62
    invoke-interface {v4}, Lorg/codegist/crest/config/ParamConfig;->getSerializer()Lorg/codegist/crest/serializer/Serializer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, p2, v3}, Lorg/codegist/crest/serializer/Serializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 63
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 64
    return-void
.end method
