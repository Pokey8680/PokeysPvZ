.class abstract Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;
.source "ParamAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 33
    .local p0, "this":Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;, "Lorg/codegist/crest/config/annotate/ParamAnnotationHandler<TT;>;"
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected nullIfUnset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    .local p0, "this":Lorg/codegist/crest/config/annotate/ParamAnnotationHandler;, "Lorg/codegist/crest/config/annotate/ParamAnnotationHandler<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method
