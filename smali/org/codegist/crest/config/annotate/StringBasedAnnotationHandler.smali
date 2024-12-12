.class public abstract Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;
.super Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;
.source "StringBasedAnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final placeholders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 2
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 41
    .local p0, "this":Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;, "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler<TA;>;"
    invoke-direct {p0}, Lorg/codegist/crest/config/annotate/NoOpAnnotationHandler;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/codegist/crest/CRestConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#placeholders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;->placeholders:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method protected ph(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 66
    .local p0, "this":Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;, "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler<TA;>;"
    iget-object v0, p0, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;->placeholders:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/codegist/crest/util/Placeholders;->merge(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs ph([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "strs"    # [Ljava/lang/String;

    .prologue
    .line 52
    .local p0, "this":Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;, "Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler<TA;>;"
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 53
    .local v1, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 54
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/codegist/crest/config/annotate/StringBasedAnnotationHandler;->ph(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v1
.end method
