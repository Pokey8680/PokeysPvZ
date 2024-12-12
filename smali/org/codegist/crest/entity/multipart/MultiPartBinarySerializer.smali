.class final Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;
.super Ljava/lang/Object;
.source "MultiPartBinarySerializer.java"

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
.field private static final BINARY_SERIALIZERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field static final INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v1, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;

    invoke-direct {v1}, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;-><init>()V

    sput-object v1, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Lorg/codegist/crest/serializer/Serializer;>;"
    const-class v1, Ljava/io/File;

    sget-object v2, Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartFileSerializer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Ljava/io/InputStream;

    sget-object v2, Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;->INSTANCE:Lorg/codegist/crest/entity/multipart/MultiPartInputStreamSerializer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->BINARY_SERIALIZERS:Ljava/util/Map;

    .line 49
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSerializer(Ljava/lang/Class;)Lorg/codegist/crest/serializer/Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/serializer/Serializer",
            "<",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->BINARY_SERIALIZERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/serializer/Serializer;

    return-object v0
.end method

.method static isBinary(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->BINARY_SERIALIZERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;Lorg/codegist/crest/serializer/Serializer;)V
    .locals 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "Ljava/io/OutputStream;",
            "Lorg/codegist/crest/serializer/Serializer",
            "<",
            "Lorg/codegist/crest/entity/multipart/MultiPart",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;"
    .local p3, "serializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<Lorg/codegist/crest/entity/multipart/MultiPart<*>;>;"
    invoke-virtual {p0}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v2

    .line 62
    .local v2, "pc":Lorg/codegist/crest/config/ParamConfig;
    invoke-virtual {p0}, Lorg/codegist/crest/entity/multipart/MultiPart;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "boundary":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codegist/crest/entity/multipart/MultiPart;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codegist/crest/param/Param;

    invoke-interface {v5}, Lorg/codegist/crest/param/Param;->getValue()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "value":Ljava/lang/Object;
    new-instance v4, Lorg/codegist/crest/entity/multipart/MultiPart;

    invoke-direct {v4, v2, v3, v0}, Lorg/codegist/crest/entity/multipart/MultiPart;-><init>(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .local v4, "valueMultiPart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<*>;"
    invoke-interface {p3, v4, p1, p2}, Lorg/codegist/crest/serializer/Serializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 67
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "valueMultiPart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<*>;"
    :cond_0
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    return-void
.end method

.method public serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 2
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
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
    .line 52
    .local p1, "multipart":Lorg/codegist/crest/entity/multipart/MultiPart;, "Lorg/codegist/crest/entity/multipart/MultiPart<Lorg/codegist/crest/param/Param;>;"
    invoke-virtual {p1}, Lorg/codegist/crest/entity/multipart/MultiPart;->getParamConfig()Lorg/codegist/crest/config/ParamConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/codegist/crest/config/ParamConfig;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->getSerializer(Ljava/lang/Class;)Lorg/codegist/crest/serializer/Serializer;

    move-result-object v0

    .line 53
    .local v0, "serializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<Lorg/codegist/crest/entity/multipart/MultiPart<*>;>;"
    invoke-static {p1, p2, p3, v0}, Lorg/codegist/crest/entity/multipart/MultiPartBinarySerializer;->serialize(Lorg/codegist/crest/entity/multipart/MultiPart;Ljava/nio/charset/Charset;Ljava/io/OutputStream;Lorg/codegist/crest/serializer/Serializer;)V

    .line 54
    return-void
.end method
