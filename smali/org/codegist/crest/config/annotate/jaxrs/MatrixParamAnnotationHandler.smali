.class Lorg/codegist/crest/config/annotate/jaxrs/MatrixParamAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;
.source "MatrixParamAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler",
        "<",
        "Ljavax/ws/rs/MatrixParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 38
    return-void
.end method


# virtual methods
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
    check-cast p1, Ljavax/ws/rs/MatrixParam;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/MatrixParamAnnotationHandler;->handleParameterAnnotation(Ljavax/ws/rs/MatrixParam;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-void
.end method

.method public handleParameterAnnotation(Ljavax/ws/rs/MatrixParam;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 2
    .param p1, "annotation"    # Ljavax/ws/rs/MatrixParam;
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 42
    sget-object v0, Lorg/codegist/crest/config/ParamType;->MATRIX:Lorg/codegist/crest/config/ParamType;

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/ParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljavax/ws/rs/MatrixParam;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codegist/crest/config/annotate/jaxrs/MatrixParamAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/ParamConfigBuilder;->setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 43
    return-void
.end method
