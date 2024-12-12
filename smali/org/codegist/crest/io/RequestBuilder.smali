.class public interface abstract Lorg/codegist/crest/io/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# virtual methods
.method public abstract addParam(Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/RequestBuilder;
.end method

.method public abstract addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/lang/Object;)Lorg/codegist/crest/io/RequestBuilder;
.end method

.method public abstract addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)Lorg/codegist/crest/io/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/ParamConfig;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/io/RequestBuilder;"
        }
    .end annotation
.end method

.method public varargs abstract addParams([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/RequestBuilder;
.end method

.method public abstract build(Lorg/codegist/crest/config/MethodConfig;)Lorg/codegist/crest/io/Request;
.end method
