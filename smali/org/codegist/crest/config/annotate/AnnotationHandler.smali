.class public interface abstract Lorg/codegist/crest/config/annotate/AnnotationHandler;
.super Ljava/lang/Object;
.source "AnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleInterfaceAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V
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
.end method

.method public abstract handleMethodAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/MethodConfigBuilder;)V
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
.end method

.method public abstract handleParameterAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/ParamConfigBuilder;)V
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
.end method
