.class public interface abstract Lorg/codegist/crest/config/InterfaceConfigBuilder;
.super Ljava/lang/Object;
.source "InterfaceConfigBuilder.java"


# virtual methods
.method public abstract appendMethodsPath(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract build()Lorg/codegist/crest/config/InterfaceConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setMethodsCharset(Ljava/nio/charset/Charset;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setMethodsConnectionTimeout(I)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public varargs abstract setMethodsConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setMethodsDeserializer(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setMethodsEndPoint(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setMethodsEntityWriter(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/entity/EntityWriter;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setMethodsErrorHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ErrorHandler;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setMethodsProduces(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setMethodsRequestInterceptor(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/interceptor/RequestInterceptor;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setMethodsResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/ResponseHandler;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setMethodsRetryHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/handler/RetryHandler;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract setMethodsSocketTimeout(I)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setMethodsType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setParamsEncoded(Z)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setParamsListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
.end method

.method public abstract setParamsSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation
.end method

.method public abstract startMethodConfig(Ljava/lang/reflect/Method;)Lorg/codegist/crest/config/MethodConfigBuilder;
.end method

.method public abstract startMethodsExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;
.end method
