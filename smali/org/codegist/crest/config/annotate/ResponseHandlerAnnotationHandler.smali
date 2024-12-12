.class Lorg/codegist/crest/config/annotate/ResponseHandlerAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "ResponseHandlerAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/ResponseHandler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
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
    .line 32
    check-cast p1, Lorg/codegist/crest/annotate/ResponseHandler;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/ResponseHandlerAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/ResponseHandler;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/ResponseHandler;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/ResponseHandler;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p1}, Lorg/codegist/crest/annotate/ResponseHandler;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->setMethodsResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .line 37
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
    check-cast p1, Lorg/codegist/crest/annotate/ResponseHandler;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/ResponseHandlerAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/ResponseHandler;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/ResponseHandler;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/ResponseHandler;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p1}, Lorg/codegist/crest/annotate/ResponseHandler;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->setResponseHandler(Ljava/lang/Class;)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 42
    return-void
.end method
