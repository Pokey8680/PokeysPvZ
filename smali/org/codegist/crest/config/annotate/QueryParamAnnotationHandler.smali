.class Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;
.source "QueryParamAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/ParamAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/QueryParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

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
    .line 34
    check-cast p1, Lorg/codegist/crest/annotate/QueryParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 2
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/QueryParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 42
    invoke-interface {p2}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->startMethodsExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParam;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 46
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
    .line 34
    check-cast p1, Lorg/codegist/crest/annotate/QueryParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 2
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/QueryParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 50
    invoke-interface {p2}, Lorg/codegist/crest/config/MethodConfigBuilder;->startExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParam;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 54
    return-void
.end method

.method public bridge synthetic handleParameterAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .param p2, "x1"    # Lorg/codegist/crest/config/ParamConfigBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lorg/codegist/crest/annotate/QueryParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->handleParameterAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-void
.end method

.method public handleParameterAnnotation(Lorg/codegist/crest/annotate/QueryParam;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 2
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/QueryParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 58
    sget-object v0, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/QueryParam;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/QueryParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 61
    return-void
.end method
