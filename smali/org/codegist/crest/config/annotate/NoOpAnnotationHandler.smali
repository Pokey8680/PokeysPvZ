.class public Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.super Ljava/lang/Object;
.source "NoOpAnnotationHandler.java"

# interfaces
.implements Lorg/codegist/crest/config/annotate/AnnotationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/codegist/crest/config/annotate/AnnotationHandler",
        "<TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;, "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInterfaceAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
    .locals 0
    .param p2, "builder"    # Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;, "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler<TA;>;"
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    return-void
.end method

.method public handleMethodAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 0
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lorg/codegist/crest/config/MethodConfigBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;, "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler<TA;>;"
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    return-void
.end method

.method public handleParameterAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/ParamConfigBuilder;)V
    .locals 0
    .param p2, "builder"    # Lorg/codegist/crest/config/ParamConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lorg/codegist/crest/config/ParamConfigBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;, "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler<TA;>;"
    .local p1, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    return-void
.end method
