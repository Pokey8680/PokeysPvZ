.class Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "QueryParamsAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/QueryParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final handler:Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 41
    new-instance v0, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;

    invoke-direct {v0, p1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    invoke-direct {p0, v0}, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;-><init>(Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;->handler:Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic handleInterfaceAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .param p2, "x1"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lorg/codegist/crest/annotate/QueryParams;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/QueryParams;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/QueryParams;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 5
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/QueryParams;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParams;->value()[Lorg/codegist/crest/annotate/QueryParam;

    move-result-object v0

    .local v0, "arr$":[Lorg/codegist/crest/annotate/QueryParam;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 47
    .local v3, "paramAnnotation":Lorg/codegist/crest/annotate/QueryParam;
    iget-object v4, p0, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;->handler:Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;

    invoke-virtual {v4, v3, p2}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "paramAnnotation":Lorg/codegist/crest/annotate/QueryParam;
    :cond_0
    return-void
.end method

.method public bridge synthetic handleMethodAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .param p2, "x1"    # Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lorg/codegist/crest/annotate/QueryParams;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/QueryParams;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/QueryParams;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 5
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/QueryParams;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 53
    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParams;->value()[Lorg/codegist/crest/annotate/QueryParam;

    move-result-object v0

    .local v0, "arr$":[Lorg/codegist/crest/annotate/QueryParam;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 54
    .local v3, "paramAnnotation":Lorg/codegist/crest/annotate/QueryParam;
    iget-object v4, p0, Lorg/codegist/crest/config/annotate/QueryParamsAnnotationHandler;->handler:Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;

    invoke-virtual {v4, v3, p2}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v3    # "paramAnnotation":Lorg/codegist/crest/annotate/QueryParam;
    :cond_0
    return-void
.end method
