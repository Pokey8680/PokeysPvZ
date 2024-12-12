.class public abstract Lorg/codegist/crest/serializer/StringSerializer;
.super Ljava/lang/Object;
.source "StringSerializer.java"

# interfaces
.implements Lorg/codegist/crest/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/serializer/Serializer",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/codegist/crest/serializer/StringSerializer;, "Lorg/codegist/crest/serializer/StringSerializer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
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
.end method

.method public serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
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
    .local p0, "this":Lorg/codegist/crest/serializer/StringSerializer;, "Lorg/codegist/crest/serializer/StringSerializer<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/serializer/StringSerializer;->serialize(Ljava/lang/Object;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 46
    return-void
.end method
