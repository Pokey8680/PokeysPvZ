.class Lorg/codegist/crest/config/annotate/jaxrs/EncodedAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "EncodedAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<",
        "Ljavax/ws/rs/Encoded;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
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
    .line 33
    check-cast p1, Ljavax/ws/rs/Encoded;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/EncodedAnnotationHandler;->handleInterfaceAnnotation(Ljavax/ws/rs/Encoded;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Ljavax/ws/rs/Encoded;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/Encoded;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->setParamsEncoded(Z)Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .line 38
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
    .line 33
    check-cast p1, Ljavax/ws/rs/Encoded;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/EncodedAnnotationHandler;->handleMethodAnnotation(Ljavax/ws/rs/Encoded;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Ljavax/ws/rs/Encoded;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/Encoded;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->setParamsEncoded(Z)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 43
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
    .line 33
    check-cast p1, Ljavax/ws/rs/Encoded;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/EncodedAnnotationHandler;->handleParameterAnnotation(Ljavax/ws/rs/Encoded;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    return-void
.end method

.method public handleParameterAnnotation(Ljavax/ws/rs/Encoded;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/Encoded;
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/ParamConfigBuilder;->setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;

    .line 48
    return-void
.end method
