.class public Lorg/codegist/crest/serializer/primitive/ByteArrayDeserializer;
.super Lorg/codegist/crest/serializer/TypeDeserializer;
.source "ByteArrayDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/TypeDeserializer",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/codegist/crest/serializer/TypeDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/primitive/ByteArrayDeserializer;->deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method protected deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[B
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/codegist/common/io/IOs;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v0

    return-object v0
.end method
