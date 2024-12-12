.class public abstract Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;
.super Lorg/codegist/crest/serializer/TypeDeserializer;
.source "PrimitiveDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codegist/crest/serializer/TypeDeserializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;, "Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer<TT;>;"
    invoke-direct {p0}, Lorg/codegist/crest/serializer/TypeDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;, "Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer<TT;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/codegist/crest/serializer/primitive/PrimitiveDeserializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
