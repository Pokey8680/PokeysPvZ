.class Lorg/codegist/crest/config/annotate/jaxrs/PathAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;
.source "PathAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler",
        "<",
        "Ljavax/ws/rs/Path;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 37
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
    check-cast p1, Ljavax/ws/rs/Path;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/PathAnnotationHandler;->handleInterfaceAnnotation(Ljavax/ws/rs/Path;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Ljavax/ws/rs/Path;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/Path;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 41
    invoke-interface {p1}, Ljavax/ws/rs/Path;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/annotate/jaxrs/PathAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->appendMethodsPath(Ljava/lang/String;)Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .line 42
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
    check-cast p1, Ljavax/ws/rs/Path;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/PathAnnotationHandler;->handleMethodAnnotation(Ljavax/ws/rs/Path;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Ljavax/ws/rs/Path;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/Path;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 46
    invoke-interface {p1}, Ljavax/ws/rs/Path;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/annotate/jaxrs/PathAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->appendPath(Ljava/lang/String;)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 47
    return-void
.end method
