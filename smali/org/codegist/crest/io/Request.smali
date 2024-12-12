.class public interface abstract Lorg/codegist/crest/io/Request;
.super Ljava/lang/Object;
.source "Request.java"


# virtual methods
.method public abstract getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamType;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethodConfig()Lorg/codegist/crest/config/MethodConfig;
.end method

.method public abstract getParams(Lorg/codegist/crest/config/ParamType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/Param;",
            ">;"
        }
    .end annotation
.end method
