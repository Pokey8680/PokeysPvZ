.class Lorg/codegist/crest/config/annotate/EncodedAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "EncodedAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/Encoded;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;-><init>()V

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
    check-cast p1, Lorg/codegist/crest/annotate/Encoded;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/EncodedAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/Encoded;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/Encoded;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/Encoded;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->setParamsEncoded(Z)Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .line 36
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
    check-cast p1, Lorg/codegist/crest/annotate/Encoded;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/EncodedAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/Encoded;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/Encoded;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/Encoded;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->setParamsEncoded(Z)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 41
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
    .line 31
    check-cast p1, Lorg/codegist/crest/annotate/Encoded;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/EncodedAnnotationHandler;->handleParameterAnnotation(Lorg/codegist/crest/annotate/Encoded;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-void
.end method

.method public handleParameterAnnotation(Lorg/codegist/crest/annotate/Encoded;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/Encoded;
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/ParamConfigBuilder;->setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 46
    return-void
.end method
