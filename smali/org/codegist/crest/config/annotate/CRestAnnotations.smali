.class public final Lorg/codegist/crest/config/annotate/CRestAnnotations;
.super Ljava/lang/Object;
.source "CRestAnnotations.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getMapping()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/config/annotate/AnnotationHandler;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/lang/Class<+Lorg/codegist/crest/config/annotate/AnnotationHandler;>;>;"
    const-class v1, Lorg/codegist/crest/annotate/ConnectionTimeout;

    const-class v2, Lorg/codegist/crest/config/annotate/ConnectionTimeoutAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-class v1, Lorg/codegist/crest/annotate/Consumes;

    const-class v2, Lorg/codegist/crest/config/annotate/ConsumesAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v1, Lorg/codegist/crest/annotate/CookieParam;

    const-class v2, Lorg/codegist/crest/config/annotate/CookieParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-class v1, Lorg/codegist/crest/annotate/CookieParams;

    const-class v2, Lorg/codegist/crest/config/annotate/CookieParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-class v1, Lorg/codegist/crest/annotate/DELETE;

    const-class v2, Lorg/codegist/crest/config/annotate/DELETEAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v1, Lorg/codegist/crest/annotate/Encoded;

    const-class v2, Lorg/codegist/crest/config/annotate/EncodedAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Lorg/codegist/crest/annotate/Encoding;

    const-class v2, Lorg/codegist/crest/config/annotate/EncodingAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v1, Lorg/codegist/crest/annotate/EndPoint;

    const-class v2, Lorg/codegist/crest/config/annotate/EndPointAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v1, Lorg/codegist/crest/annotate/EntityWriter;

    const-class v2, Lorg/codegist/crest/config/annotate/EntityWriterAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Lorg/codegist/crest/annotate/ErrorHandler;

    const-class v2, Lorg/codegist/crest/config/annotate/ErrorHandlerAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v1, Lorg/codegist/crest/annotate/FormParam;

    const-class v2, Lorg/codegist/crest/config/annotate/FormParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v1, Lorg/codegist/crest/annotate/FormParams;

    const-class v2, Lorg/codegist/crest/config/annotate/FormParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v1, Lorg/codegist/crest/annotate/GET;

    const-class v2, Lorg/codegist/crest/config/annotate/GETAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v1, Lorg/codegist/crest/annotate/HEAD;

    const-class v2, Lorg/codegist/crest/config/annotate/HEADAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v1, Lorg/codegist/crest/annotate/HeaderParam;

    const-class v2, Lorg/codegist/crest/config/annotate/HeaderParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v1, Lorg/codegist/crest/annotate/HeaderParams;

    const-class v2, Lorg/codegist/crest/config/annotate/HeaderParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-class v1, Lorg/codegist/crest/annotate/ListSeparator;

    const-class v2, Lorg/codegist/crest/config/annotate/ListSeparatorAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-class v1, Lorg/codegist/crest/annotate/MatrixParam;

    const-class v2, Lorg/codegist/crest/config/annotate/MatrixParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class v1, Lorg/codegist/crest/annotate/MatrixParams;

    const-class v2, Lorg/codegist/crest/config/annotate/MatrixParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Lorg/codegist/crest/annotate/MultiPartParam;

    const-class v2, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Lorg/codegist/crest/annotate/MultiPartParams;

    const-class v2, Lorg/codegist/crest/config/annotate/MultiPartParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v1, Lorg/codegist/crest/annotate/OPTIONS;

    const-class v2, Lorg/codegist/crest/config/annotate/OPTIONSAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v1, Lorg/codegist/crest/annotate/Path;

    const-class v2, Lorg/codegist/crest/config/annotate/PathAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-class v1, Lorg/codegist/crest/annotate/PathParam;

    const-class v2, Lorg/codegist/crest/config/annotate/PathParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-class v1, Lorg/codegist/crest/annotate/PathParams;

    const-class v2, Lorg/codegist/crest/config/annotate/PathParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-class v1, Lorg/codegist/crest/annotate/POST;

    const-class v2, Lorg/codegist/crest/config/annotate/POSTAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v1, Lorg/codegist/crest/annotate/Produces;

    const-class v2, Lorg/codegist/crest/config/annotate/ProducesAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-class v1, Lorg/codegist/crest/annotate/PUT;

    const-class v2, Lorg/codegist/crest/config/annotate/PUTAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-class v1, Lorg/codegist/crest/annotate/QueryParam;

    const-class v2, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-class v1, Lorg/codegist/crest/annotate/QueryParams;

    const-class v2, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-class v1, Lorg/codegist/crest/annotate/RequestInterceptor;

    const-class v2, Lorg/codegist/crest/config/annotate/RequestInterceptorAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v1, Lorg/codegist/crest/annotate/ResponseHandler;

    const-class v2, Lorg/codegist/crest/config/annotate/ResponseHandlerAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-class v1, Lorg/codegist/crest/annotate/RetryHandler;

    const-class v2, Lorg/codegist/crest/config/annotate/RetryHandlerAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class v1, Lorg/codegist/crest/annotate/Serializer;

    const-class v2, Lorg/codegist/crest/config/annotate/SerializerAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-class v1, Lorg/codegist/crest/annotate/SocketTimeout;

    const-class v2, Lorg/codegist/crest/config/annotate/SocketTimeoutAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class v1, Lorg/codegist/crest/annotate/Deserializer;

    const-class v2, Lorg/codegist/crest/config/annotate/DeserializerAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method
