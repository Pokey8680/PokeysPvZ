.class public interface abstract Lorg/codegist/crest/io/http/EntityParamExtractor;
.super Ljava/lang/Object;
.source "EntityParamExtractor.java"


# virtual methods
.method public abstract extract(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
