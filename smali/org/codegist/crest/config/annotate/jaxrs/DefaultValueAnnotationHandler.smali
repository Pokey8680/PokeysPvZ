.class Lorg/codegist/crest/config/annotate/jaxrs/DefaultValueAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;
.source "DefaultValueAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler",
        "<",
        "Ljavax/ws/rs/DefaultValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 36
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
    .line 32
    check-cast p1, Ljavax/ws/rs/DefaultValue;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/DefaultValueAnnotationHandler;->handleParameterAnnotation(Ljavax/ws/rs/DefaultValue;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-void
.end method

.method public handleParameterAnnotation(Ljavax/ws/rs/DefaultValue;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/DefaultValue;
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 40
    invoke-interface {p1}, Ljavax/ws/rs/DefaultValue;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/annotate/jaxrs/DefaultValueAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/ParamConfigBuilder;->setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 41
    return-void
.end method