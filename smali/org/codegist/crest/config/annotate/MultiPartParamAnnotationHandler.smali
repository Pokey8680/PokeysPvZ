.class Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;
.source "MultiPartParamAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/ParamAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/MultiPartParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 40
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
    .line 36
    check-cast p1, Lorg/codegist/crest/annotate/MultiPartParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/MultiPartParam;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/MultiPartParam;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 3
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/MultiPartParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 44
    invoke-interface {p2}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->startMethodsExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/util/MultiParts;->toMetaDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 49
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
    .line 36
    check-cast p1, Lorg/codegist/crest/annotate/MultiPartParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/MultiPartParam;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/MultiPartParam;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 3
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/MultiPartParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 53
    invoke-interface {p2}, Lorg/codegist/crest/config/MethodConfigBuilder;->startExtraParamConfig()Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    sget-object v1, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/util/MultiParts;->toMetaDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 58
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
    .line 36
    check-cast p1, Lorg/codegist/crest/annotate/MultiPartParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->handleParameterAnnotation(Lorg/codegist/crest/annotate/MultiPartParam;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-void
.end method

.method public handleParameterAnnotation(Lorg/codegist/crest/annotate/MultiPartParam;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 3
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/MultiPartParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 62
    sget-object v0, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/codegist/crest/annotate/MultiPartParam;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/MultiPartParamAnnotationHandler;->nullIfUnset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/util/MultiParts;->toMetaDatas(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 66
    return-void
.end method
