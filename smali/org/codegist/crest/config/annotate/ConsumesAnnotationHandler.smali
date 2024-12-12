.class Lorg/codegist/crest/config/annotate/ConsumesAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;
.source "ConsumesAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/Consumes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 35
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
    .line 31
    check-cast p1, Lorg/codegist/crest/annotate/Consumes;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/ConsumesAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/Consumes;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/Consumes;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/Consumes;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 39
    invoke-interface {p1}, Lorg/codegist/crest/annotate/Consumes;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/annotate/ConsumesAnnotationHandler;->ph([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->setMethodsConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .line 40
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
    .line 31
    check-cast p1, Lorg/codegist/crest/annotate/Consumes;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/ConsumesAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/Consumes;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/Consumes;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/Consumes;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 44
    invoke-interface {p1}, Lorg/codegist/crest/annotate/Consumes;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/annotate/ConsumesAnnotationHandler;->ph([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->setConsumes([Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 45
    return-void
.end method
