.class public Lorg/codegist/crest/serializer/InputStreamDeserializer;
.super Lorg/codegist/crest/serializer/TypeDeserializer;
.source "InputStreamDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/TypeDeserializer",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/codegist/crest/serializer/TypeDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 36
    return-object p1
.end method

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
    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/InputStreamDeserializer;->deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
