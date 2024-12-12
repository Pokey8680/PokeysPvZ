.class public final Lorg/codegist/crest/util/Serializers;
.super Ljava/lang/Object;
.source "Serializers.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static serialize(Lorg/codegist/crest/serializer/Serializer;Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codegist/crest/serializer/Serializer",
            "<TT;>;TT;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "serializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    instance-of v1, p0, Lorg/codegist/crest/serializer/StringSerializer;

    if-eqz v1, :cond_0

    .line 52
    check-cast p0, Lorg/codegist/crest/serializer/StringSerializer;

    .end local p0    # "serializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/StringSerializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_0
    return-object v1

    .line 54
    .restart local p0    # "serializer":Lorg/codegist/crest/serializer/Serializer;, "Lorg/codegist/crest/serializer/Serializer<TT;>;"
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0, p1, p2, v0}, Lorg/codegist/crest/serializer/Serializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 56
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method
