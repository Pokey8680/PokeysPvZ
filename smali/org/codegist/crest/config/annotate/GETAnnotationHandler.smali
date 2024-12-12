.class Lorg/codegist/crest/config/annotate/GETAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "GETAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<",
        "Lorg/codegist/crest/annotate/GET;",
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
    check-cast p1, Lorg/codegist/crest/annotate/GET;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/GETAnnotationHandler;->handleInterfaceAnnotation(Lorg/codegist/crest/annotate/GET;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    return-void
.end method

.method public handleInterfaceAnnotation(Lorg/codegist/crest/annotate/GET;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/GET;
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;

    .prologue
    .line 35
    sget-object v0, Lorg/codegist/crest/config/MethodType;->GET:Lorg/codegist/crest/config/MethodType;

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->setMethodsType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/InterfaceConfigBuilder;

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
    check-cast p1, Lorg/codegist/crest/annotate/GET;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/GETAnnotationHandler;->handleMethodAnnotation(Lorg/codegist/crest/annotate/GET;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Lorg/codegist/crest/annotate/GET;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Lorg/codegist/crest/annotate/GET;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 40
    sget-object v0, Lorg/codegist/crest/config/MethodType;->GET:Lorg/codegist/crest/config/MethodType;

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->setType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 41
    return-void
.end method
