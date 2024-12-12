.class Lorg/codegist/crest/config/annotate/jaxrs/PUTAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "PUTAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<",
        "Ljavax/ws/rs/PUT;",
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
    check-cast p1, Ljavax/ws/rs/PUT;

    .end local p1    # "x0":Ljava/lang/annotation/Annotation;
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/config/annotate/jaxrs/PUTAnnotationHandler;->handleMethodAnnotation(Ljavax/ws/rs/PUT;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    return-void
.end method

.method public handleMethodAnnotation(Ljavax/ws/rs/PUT;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 1
    .param p1, "annotation"    # Ljavax/ws/rs/PUT;
    .param p2, "builder"    # Lorg/codegist/crest/config/MethodConfigBuilder;

    .prologue
    .line 36
    sget-object v0, Lorg/codegist/crest/config/MethodType;->PUT:Lorg/codegist/crest/config/MethodType;

    invoke-interface {p2, v0}, Lorg/codegist/crest/config/MethodConfigBuilder;->setType(Lorg/codegist/crest/config/MethodType;)Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 37
    return-void
.end method
