.class public Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;
.super Ljava/lang/Object;
.source "MultiPartEntityWriter.java"

# interfaces
.implements Lorg/codegist/crest/entity/EntityWriter;


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final FULL_BOUNDARY:Ljava/lang/String;

.field private static final LRLN:Ljava/lang/String; = "\r\n"

.field private static final MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary="


# instance fields
.field private final binarySerializer:Lorg/codegist/crest/serializer/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/serializer/Serializer",
            "<",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;>;"
        }
    .end annotation
.end field

.field private final textSerializer:Lorg/codegist/crest/serializer/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/serializer/Serializer",
            "<",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/codegist/common/lang/Randoms;->randomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->BOUNDARY:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->FULL_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;

    sget-object v1, Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartTextSerializer;

    invoke-direct {p0, v0, v1}, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;-><init>(Lorg/codegist/crest/serializer/Serializer;Lorg/codegist/crest/serializer/Serializer;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/serializer/Serializer;Lorg/codegist/crest/serializer/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/serializer/Serializer",
            "<",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;>;",
            "Lorg/codegist/crest/serializer/Serializer",
            "<",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "binarySerializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;>;"
    .local p2, "textSerializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->binarySerializer:Lorg/codegist/crest/serializer/Serializer;

    .line 56
    iput-object p2, p0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->textSerializer:Lorg/codegist/crest/serializer/Serializer;

    .line 57
    return-void
.end method


# virtual methods
.method public getContentLength(Lorg/codegist/crest/io/Request;)I
    .locals 1
    .param p1, "request"    # Lorg/codegist/crest/io/Request;

    .prologue
    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public getContentType(Lorg/codegist/crest/io/Request;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Lorg/codegist/crest/io/Request;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/codegist/crest/io/Request;Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "request"    # Lorg/codegist/crest/io/Request;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    .local v4, "out":Ljava/io/DataOutputStream;
    sget-object v8, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p1, v8}, Lorg/codegist/crest/io/Request;->getParams(Lorg/codegist/crest/config/ParamType;)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "formParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/Param;>;"
    invoke-interface {p1}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v8

    invoke-interface {v8}, Lorg/codegist/crest/config/MethodConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 81
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codegist/crest/param/Param;

    .line 82
    .local v5, "param":Lorg/codegist/crest/param/Param;
    invoke-interface {v5}, Lorg/codegist/crest/param/Param;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v7

    .line 83
    .local v7, "pc":Lorg/codegist/crest/config/ParamConfig;
    invoke-interface {v7}, Lorg/codegist/crest/config/ParamConfig;->getValueClass()Ljava/lang/Class;

    move-result-object v6

    .line 84
    .local v6, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lorg/codegist/crest/entity/multipart/MultiPart;

    sget-object v8, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->BOUNDARY:Ljava/lang/String;

    invoke-direct {v3, v7, v5, v8}, Lorg/codegist/crest/entity/multipart/MultiPart;-><init>(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .local v3, "multiPart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;"
    invoke-static {v6}, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->isBinary(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    iget-object v8, p0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->binarySerializer:Lorg/codegist/crest/serializer/Serializer;

    invoke-interface {v8, v3, v0, v4}, Lorg/codegist/crest/serializer/Serializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v8, p0, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->textSerializer:Lorg/codegist/crest/serializer/Serializer;

    invoke-interface {v8, v3, v0, v4}, Lorg/codegist/crest/serializer/Serializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 92
    .end local v3    # "multiPart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;"
    .end local v5    # "param":Lorg/codegist/crest/param/Param;
    .end local v6    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "pc":Lorg/codegist/crest/config/ParamConfig;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/codegist/crest/entity/multipart/MultiPartEntityWriter;->FULL_BOUNDARY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 93
    const-string v8, "\r\n"

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 95
    return-void
.end method
