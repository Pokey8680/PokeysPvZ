.class public final Lorg/codegist/crest/util/Requests;
.super Ljava/lang/Object;
.source "Requests.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static from(Lorg/codegist/crest/io/RequestBuilderFactory;Lorg/codegist/crest/config/MethodConfig;[Ljava/lang/Object;)Lorg/codegist/crest/io/Request;
    .locals 6
    .param p0, "factory"    # Lorg/codegist/crest/io/RequestBuilderFactory;
    .param p1, "mc"    # Lorg/codegist/crest/config/MethodConfig;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p0}, Lorg/codegist/crest/io/RequestBuilderFactory;->create()Lorg/codegist/crest/io/RequestBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/codegist/crest/config/MethodConfig;->getExtraParams()[Lorg/codegist/crest/config/ParamConfig;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/codegist/crest/io/RequestBuilder;->addParams([Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/RequestBuilder;

    move-result-object v0

    .line 60
    .local v0, "builder":Lorg/codegist/crest/io/RequestBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/codegist/crest/config/MethodConfig;->getParamCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 61
    aget-object v4, p2, v1

    invoke-static {v4}, Lorg/codegist/common/lang/Objects;->asCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 62
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1, v1}, Lorg/codegist/crest/config/MethodConfig;->getParamConfig(I)Lorg/codegist/crest/config/ParamConfig;

    move-result-object v2

    .line 63
    .local v2, "pc":Lorg/codegist/crest/config/ParamConfig;
    invoke-static {v3}, Lorg/codegist/common/collect/Collections;->containsOnlyNulls(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v2}, Lorg/codegist/crest/config/ParamConfig;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v0, v2}, Lorg/codegist/crest/io/RequestBuilder;->addParam(Lorg/codegist/crest/config/ParamConfig;)Lorg/codegist/crest/io/RequestBuilder;

    .line 60
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v0, v2, v3}, Lorg/codegist/crest/io/RequestBuilder;->addParam(Lorg/codegist/crest/config/ParamConfig;Ljava/util/Collection;)Lorg/codegist/crest/io/RequestBuilder;

    goto :goto_1

    .line 71
    .end local v2    # "pc":Lorg/codegist/crest/config/ParamConfig;
    .end local v3    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {p1}, Lorg/codegist/crest/config/MethodConfig;->getRequestInterceptor()Lorg/codegist/crest/interceptor/RequestInterceptor;

    move-result-object v4

    invoke-interface {v4, v0, p1, p2}, Lorg/codegist/crest/interceptor/RequestInterceptor;->beforeFire(Lorg/codegist/crest/io/RequestBuilder;Lorg/codegist/crest/config/MethodConfig;[Ljava/lang/Object;)V

    .line 72
    invoke-interface {v0, p1}, Lorg/codegist/crest/io/RequestBuilder;->build(Lorg/codegist/crest/config/MethodConfig;)Lorg/codegist/crest/io/Request;

    move-result-object v4

    return-object v4
.end method
