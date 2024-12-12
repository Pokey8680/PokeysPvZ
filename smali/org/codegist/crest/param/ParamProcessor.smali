.class public interface abstract Lorg/codegist/crest/param/ParamProcessor;
.super Ljava/lang/Object;
.source "ParamProcessor.java"


# virtual methods
.method public abstract process(Lorg/codegist/crest/param/Param;Ljava/nio/charset/Charset;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/param/Param;",
            "Ljava/nio/charset/Charset;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
