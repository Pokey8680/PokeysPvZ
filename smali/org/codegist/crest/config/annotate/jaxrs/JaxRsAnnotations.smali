.class public final Lorg/codegist/crest/config/annotate/jaxrs/JaxRsAnnotations;
.super Ljava/lang/Object;
.source "JaxRsAnnotations.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
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
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/lang/Class<+Lorg/codegist/crest/config/annotate/AnnotationHandler;>;>;"
    const-class v1, Ljavax/ws/rs/Consumes;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/ConsumesAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-class v1, Ljavax/ws/rs/CookieParam;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/CookieParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v1, Ljavax/ws/rs/DELETE;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/DELETEAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v1, Ljavax/ws/rs/Encoded;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/EncodedAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Ljavax/ws/rs/FormParam;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/FormParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v1, Ljavax/ws/rs/GET;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/GETAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class v1, Ljavax/ws/rs/HEAD;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/HEADAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-class v1, Ljavax/ws/rs/HeaderParam;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/HeaderParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-class v1, Ljavax/ws/rs/MatrixParam;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/MatrixParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v1, Ljavax/ws/rs/OPTIONS;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/OPTIONSAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-class v1, Ljavax/ws/rs/Path;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/PathAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-class v1, Ljavax/ws/rs/PathParam;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/PathParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-class v1, Ljavax/ws/rs/POST;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/POSTAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-class v1, Ljavax/ws/rs/Produces;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/ProducesAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-class v1, Ljavax/ws/rs/PUT;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/PUTAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-class v1, Ljavax/ws/rs/QueryParam;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/QueryParamAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v1, Ljavax/ws/rs/DefaultValue;

    const-class v2, Lorg/codegist/crest/config/annotate/jaxrs/DefaultValueAnnotationHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static isJaxRsAware()Z
    .locals 2

    .prologue
    .line 41
    const-string v0, "javax.ws.rs.GET"

    const-class v1, Lorg/codegist/crest/config/annotate/jaxrs/JaxRsAnnotations;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/codegist/common/reflect/Classes;->isClassKnown(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method
