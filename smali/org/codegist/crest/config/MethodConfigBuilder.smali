.class public interface abstract Lorg/codegist/crest/config/MethodConfigBuilder;
.super Ljava/lang/Object;
.source "MethodConfigBuilder.java"


# virtual methods
.method public abstract appendPath(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract build()Lorg/codegist/crest/config/MethodConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setCharset(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setConnectionTimeout(I)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public varargs abstract setConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setDeserializer(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setEndPoint(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setEntityWriter(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/entity/EntityWriter;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setErrorHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ErrorHandler;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setParamsEncoded(Z)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setParamsListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setParamsSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setProduces(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setRequestInterceptor(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/interceptor/RequestInterceptor;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ResponseHandler;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setRetryHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/RetryHandler;",
            ">;)",
            "Lorg/codegist/crest/config/MethodConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setSocketTimeout(I)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract setType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract startExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method

.method public abstract startParamConfig(I)Lorg/codegist/crest/config/ParamConfigBuilder;
.end method
