.class public Lorg/codegist/crest/serializer/ReaderDeserializer;
.super Lorg/codegist/crest/serializer/TypeDeserializer;
.source "ReaderDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/TypeDeserializer",
        "<",
        "Ljava/io/Reader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/codegist/crest/serializer/TypeDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 38
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
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
    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/ReaderDeserializer;->deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
