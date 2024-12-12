.class final Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;
.super Ljava/lang/Object;
.source "MultiPartTextSerializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Serializer",
        "<",
        "Lorg/codegist/crest/entity/multipart/MultiPart",
        "<",
        "Lorg/codegist/crest/param/Param;",
        ">;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;

.field private static final LRLN:Ljava/lang/String; = "\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;

    invoke-direct {v0}, Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;-><init>()V

    sput-object v0, Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 39
    check-cast p1, Lorg/codegist/crest/entity/multipart/MultiPart;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;->serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method

.method public serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 11
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
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
    .line 46
    .local p1, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;"
    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v7

    .line 47
    .local v7, "pc":Lorg/codegist/crest/config/ParamConfig;
    invoke-static {v7}, Lorg/codegist/crest/util/MultiParts;->getContentType(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "partContentType":Ljava/lang/String;
    invoke-static {v7}, Lorg/codegist/crest/util/MultiParts;->getFileName(Lorg/codegist/crest/config/ParamConfig;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "partFileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getBoundary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Content-Disposition: form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/codegist/crest/config/ParamConfig;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    .local v2, "multiPartHeaderSb":Ljava/lang/StringBuilder;
    invoke-static {v6}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    const-string v8, "; filename=\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_0
    const-string v8, "\r\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Content-Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-static {v5, v9}, Lorg/codegist/common/lang/Strings;->defaultIfBlank(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; charset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "multiPartHeader":Ljava/lang/String;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-interface {v7}, Lorg/codegist/crest/config/ParamConfig;->getParamProcessor()Lorg/codegist/crest/param/ParamProcessor;

    move-result-object v9

    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codegist/crest/param/Param;

    const/4 v10, 0x0

    invoke-interface {v9, v8, p2, v10}, Lorg/codegist/crest/param/ParamProcessor;->process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codegist/crest/param/EncodedPair;

    .line 77
    .local v4, "pair":Lorg/codegist/crest/param/EncodedPair;
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 78
    invoke-interface {v4}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 79
    const-string v8, "\r\n"

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v4    # "pair":Lorg/codegist/crest/param/EncodedPair;
    :cond_1
    return-void
.end method
